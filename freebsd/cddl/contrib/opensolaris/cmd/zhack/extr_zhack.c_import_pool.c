
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;
struct TYPE_3__ {char const* poolname; void* can_be_active; void* unique; } ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int DMU_OST_ZFS ;
 int EEXIST ;
 int FREAD ;
 int FTAG ;
 int FWRITE ;
 int NV_UNIQUE_NAME ;
 int ZFS_IMPORT_NORMAL ;
 int ZPOOL_PROP_READONLY ;
 int dmu_objset_register_type (int ,int ) ;
 int fatal (int *,int ,char*,char const*,...) ;
 TYPE_1__ g_importargs ;
 char const* g_pool ;
 void* g_readonly ;
 int * g_zfs ;
 int kernel_init (int) ;
 int * libzfs_init () ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_empty (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int spa_close (int *,int ) ;
 int spa_import (char const*,int *,int *,int ) ;
 scalar_t__ spa_open (char const*,int **,int ) ;
 int space_delta_cb ;
 char* strdup (char const*) ;
 char const* strerror (int) ;
 char* strpbrk (char const*,char*) ;
 int verify (int) ;
 void* zfeature_checks_disable ;
 int zpool_prop_to_name (int ) ;
 int * zpool_search_import (int *,TYPE_1__*) ;

__attribute__((used)) static void
import_pool(const char *target, boolean_t readonly)
{
 nvlist_t *config;
 nvlist_t *pools;
 int error;
 char *sepp;
 spa_t *spa;
 nvpair_t *elem;
 nvlist_t *props;
 const char *name;

 kernel_init(readonly ? FREAD : (FREAD | FWRITE));
 g_zfs = libzfs_init();
 ASSERT(g_zfs != ((void*)0));

 dmu_objset_register_type(DMU_OST_ZFS, space_delta_cb);

 g_readonly = readonly;






 if (readonly && spa_open(target, &spa, FTAG) == 0) {
  spa_close(spa, FTAG);
  return;
 }

 g_importargs.unique = B_TRUE;
 g_importargs.can_be_active = readonly;
 g_pool = strdup(target);
 if ((sepp = strpbrk(g_pool, "/@")) != ((void*)0))
  *sepp = '\0';
 g_importargs.poolname = g_pool;
 pools = zpool_search_import(g_zfs, &g_importargs);

 if (nvlist_empty(pools)) {
  if (!g_importargs.can_be_active) {
   g_importargs.can_be_active = B_TRUE;
   if (zpool_search_import(g_zfs, &g_importargs) != ((void*)0) ||
       spa_open(target, &spa, FTAG) == 0) {
    fatal(spa, FTAG, "cannot import '%s': pool is "
        "active; run " "\"zpool export %s\" "
        "first\n", g_pool, g_pool);
   }
  }

  fatal(((void*)0), FTAG, "cannot import '%s': no such pool "
      "available\n", g_pool);
 }

 elem = nvlist_next_nvpair(pools, ((void*)0));
 name = nvpair_name(elem);
 verify(nvpair_value_nvlist(elem, &config) == 0);

 props = ((void*)0);
 if (readonly) {
  verify(nvlist_alloc(&props, NV_UNIQUE_NAME, 0) == 0);
  verify(nvlist_add_uint64(props,
      zpool_prop_to_name(ZPOOL_PROP_READONLY), 1) == 0);
 }

 zfeature_checks_disable = B_TRUE;
 error = spa_import(name, config, props, ZFS_IMPORT_NORMAL);
 zfeature_checks_disable = B_FALSE;
 if (error == EEXIST)
  error = 0;

 if (error)
  fatal(((void*)0), FTAG, "can't import '%s': %s", name,
      strerror(error));
}
