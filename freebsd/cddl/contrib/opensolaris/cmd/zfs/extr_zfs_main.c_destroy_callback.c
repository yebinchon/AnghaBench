
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int cb_defer_destroy; scalar_t__ cb_force; int cb_batchedsnaps; scalar_t__ cb_dryrun; scalar_t__ cb_parsable; scalar_t__ cb_verbose; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int B_FALSE ;
 int MS_FORCE ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int fnvlist_add_boolean (int ,char const*) ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 int g_zfs ;
 char* gettext (char*) ;
 int printf (char*,char const*) ;
 int * strchr (char*,char) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_destroy (int *,int ) ;
 int zfs_destroy_snaps_nvl (int ,int ,int ) ;
 char* zfs_get_name (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 scalar_t__ zfs_unmount (int *,int *,int ) ;

__attribute__((used)) static int
destroy_callback(zfs_handle_t *zhp, void *data)
{
 destroy_cbdata_t *cb = data;
 const char *name = zfs_get_name(zhp);

 if (cb->cb_verbose) {
  if (cb->cb_parsable) {
   (void) printf("destroy\t%s\n", name);
  } else if (cb->cb_dryrun) {
   (void) printf(gettext("would destroy %s\n"),
       name);
  } else {
   (void) printf(gettext("will destroy %s\n"),
       name);
  }
 }





 if (strchr(zfs_get_name(zhp), '/') == ((void*)0) &&
     zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) {
  zfs_close(zhp);
  return (0);
 }
 if (cb->cb_dryrun) {
  zfs_close(zhp);
  return (0);
 }







 if (zfs_get_type(zhp) == ZFS_TYPE_SNAPSHOT) {
  fnvlist_add_boolean(cb->cb_batchedsnaps, name);
 } else {
  int error = zfs_destroy_snaps_nvl(g_zfs,
      cb->cb_batchedsnaps, B_FALSE);
  fnvlist_free(cb->cb_batchedsnaps);
  cb->cb_batchedsnaps = fnvlist_alloc();

  if (error != 0 ||
      zfs_unmount(zhp, ((void*)0), cb->cb_force ? MS_FORCE : 0) != 0 ||
      zfs_destroy(zhp, cb->cb_defer_destroy) != 0) {
   zfs_close(zhp);
   return (-1);
  }
 }

 zfs_close(zhp);
 return (0);
}
