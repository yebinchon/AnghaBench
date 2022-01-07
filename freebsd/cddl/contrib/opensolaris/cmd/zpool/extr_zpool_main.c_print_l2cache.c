
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ uint_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int free (char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int print_status_config (int *,char*,int *,int,int,int ) ;
 int printf (char*) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static void
print_l2cache(zpool_handle_t *zhp, nvlist_t **l2cache, uint_t nl2cache,
    int namewidth)
{
 uint_t i;
 char *name;

 if (nl2cache == 0)
  return;

 (void) printf(gettext("\tcache\n"));

 for (i = 0; i < nl2cache; i++) {
  name = zpool_vdev_name(g_zfs, zhp, l2cache[i], B_FALSE);
  print_status_config(zhp, name, l2cache[i],
      namewidth, 2, B_FALSE);
  free(name);
 }
}
