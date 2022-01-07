
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int SPA_VERSION_FEATURES ;
 int SPA_VERSION_IS_SUPPORTED (int ) ;
 int ZPOOL_CONFIG_VERSION ;
 int assert (int) ;
 char* gettext (char*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int printf (char*,char*,int ,...) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;
 char* zpool_get_name (int *) ;
 int zpool_upgrade (int *,int ) ;

__attribute__((used)) static int
upgrade_version(zpool_handle_t *zhp, uint64_t version)
{
 int ret;
 nvlist_t *config;
 uint64_t oldversion;

 config = zpool_get_config(zhp, ((void*)0));
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION,
     &oldversion) == 0);

 assert(SPA_VERSION_IS_SUPPORTED(oldversion));
 assert(oldversion < version);

 ret = zpool_upgrade(zhp, version);
 if (ret != 0)
  return (ret);

 if (version >= SPA_VERSION_FEATURES) {
  (void) printf(gettext("Successfully upgraded "
      "'%s' from version %llu to feature flags.\n"),
      zpool_get_name(zhp), oldversion);
 } else {
  (void) printf(gettext("Successfully upgraded "
      "'%s' from version %llu to version %llu.\n"),
      zpool_get_name(zhp), oldversion, version);
 }

 return (0);
}
