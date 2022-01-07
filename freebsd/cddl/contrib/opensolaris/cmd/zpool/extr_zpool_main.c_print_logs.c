
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 int free (char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_uint64 (int *,int ,int *) ;
 int print_import_config (char*,int *,int,int) ;
 int print_status_config (int *,char*,int *,int,int,int ) ;
 int printf (char*) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static void
print_logs(zpool_handle_t *zhp, nvlist_t *nv, int namewidth, boolean_t verbose)
{
 uint_t c, children;
 nvlist_t **child;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN, &child,
     &children) != 0)
  return;

 (void) printf(gettext("\tlogs\n"));

 for (c = 0; c < children; c++) {
  uint64_t is_log = B_FALSE;
  char *name;

  (void) nvlist_lookup_uint64(child[c], ZPOOL_CONFIG_IS_LOG,
      &is_log);
  if (!is_log)
   continue;
  name = zpool_vdev_name(g_zfs, zhp, child[c], B_TRUE);
  if (verbose)
   print_status_config(zhp, name, child[c], namewidth,
       2, B_FALSE);
  else
   print_import_config(name, child[c], namewidth, 2);
  free(name);
 }
}
