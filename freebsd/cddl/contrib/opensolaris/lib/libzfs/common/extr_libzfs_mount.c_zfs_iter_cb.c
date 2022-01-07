
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int get_all_cb_t ;


 int B_TRUE ;
 scalar_t__ ZFS_CANMOUNT_NOAUTO ;
 int ZFS_PROP_CANMOUNT ;
 int ZFS_PROP_INCONSISTENT ;
 int ZFS_PROP_RECEIVE_RESUME_TOKEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int libzfs_add_handle (int *,int *) ;
 int zfs_close (int *) ;
 int zfs_get_type (int *) ;
 scalar_t__ zfs_iter_filesystems (int *,int (*) (int *,void*),int *) ;
 scalar_t__ zfs_prop_get (int *,int ,int *,int ,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
zfs_iter_cb(zfs_handle_t *zhp, void *data)
{
 get_all_cb_t *cbp = data;

 if (!(zfs_get_type(zhp) & ZFS_TYPE_FILESYSTEM)) {
  zfs_close(zhp);
  return (0);
 }

 if (zfs_prop_get_int(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_NOAUTO) {
  zfs_close(zhp);
  return (0);
 }





 if (zfs_prop_get_int(zhp, ZFS_PROP_INCONSISTENT) &&
     zfs_prop_get(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
     ((void*)0), 0, ((void*)0), ((void*)0), 0, B_TRUE) == 0) {
  zfs_close(zhp);
  return (0);
 }

 libzfs_add_handle(cbp, zhp);
 if (zfs_iter_filesystems(zhp, zfs_iter_cb, cbp) != 0) {
  zfs_close(zhp);
  return (-1);
 }
 return (0);
}
