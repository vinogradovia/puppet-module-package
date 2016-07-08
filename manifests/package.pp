define package::package (
  $ensure            = undef,
  $adminfile         = undef,
  $allow_virtual     = undef,
  $allowcdrom        = undef,
  $configfiles       = undef,
  $flavor            = undef,
  $install_options   = undef,
  $package_settings  = undef,
  $provider          = undef,
  $responsefile      = undef,
  $source            = undef,
  $uninstall_options = undef,
  $vendor            = undef,

  # metaparameters
  $alias             = undef,
  $audit             = undef,
  $before            = undef,
  $loglevel          = undef,
  $noop              = undef,
  $notify            = undef,
  $require           = undef,
  $schedule          = undef,
  $subscribe         = undef,
  $tag               = undef,
) {

  if versioncmp($::puppetversion,'3.6.1') >= 0 {
    Package {
      allow_virtual => $allow_virtual_packages,
      package_settings  => $package_settings,
    }
  }

  if ! defined(Package[$title]) {
    package { $title:
      ensure            => $ensure,
      adminfile         => $adminfile,
      allowcdrom        => $allowcdrom,
      configfiles       => $configfiles,
      flavor            => $flavor,
      install_options   => $install_options,
      provider          => $provider,
      responsefile      => $responsefile,
      source            => $source,
      uninstall_options => $uninstall_options,
      vendor            => $vendor,
    
      # metaparameters
      alias             => $alias,
      audit             => $audit,
      before            => $before,
      loglevel          => $loglevel,
      noop              => $noop,
      notify            => $notify,
      require           => $require,
      schedule          => $schedule,
      subscribe         => $subscribe,
      tag               => $tag,
    }
  }
}
