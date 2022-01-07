
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef int libzfs_handle_t ;


 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 int free (char*) ;
 scalar_t__ libzfs_mnttab_find (int *,int ,struct mnttab*) ;
 int libzfs_mnttab_remove (int *,int ) ;
 int share_all_proto ;
 scalar_t__ unmount_one (int *,char*,int) ;
 scalar_t__ zfs_get_type (TYPE_1__*) ;
 int zfs_shareall (TYPE_1__*) ;
 char* zfs_strdup (int *,char const*) ;
 scalar_t__ zfs_unshare_proto (TYPE_1__*,char*,int ) ;

int
zfs_unmount(zfs_handle_t *zhp, const char *mountpoint, int flags)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 struct mnttab entry;
 char *mntpt = ((void*)0);


 if (mountpoint != ((void*)0) || ((zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) &&
     libzfs_mnttab_find(hdl, zhp->zfs_name, &entry) == 0)) {






  if (mountpoint == ((void*)0))
   mntpt = zfs_strdup(hdl, entry.mnt_mountp);
  else
   mntpt = zfs_strdup(hdl, mountpoint);




  if (zfs_unshare_proto(zhp, mntpt, share_all_proto) != 0)
   return (-1);

  if (unmount_one(hdl, mntpt, flags) != 0) {
   free(mntpt);
   (void) zfs_shareall(zhp);
   return (-1);
  }
  libzfs_mnttab_remove(hdl, zhp->zfs_name);
  free(mntpt);
 }

 return (0);
}
