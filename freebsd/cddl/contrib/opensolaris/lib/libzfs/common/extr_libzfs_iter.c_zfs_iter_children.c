
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_iter_f ;
typedef int zfs_handle_t ;


 int B_FALSE ;
 int zfs_iter_filesystems (int *,int ,void*) ;
 int zfs_iter_snapshots (int *,int ,int ,void*,int ,int ) ;

int
zfs_iter_children(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
 int ret;

 if ((ret = zfs_iter_snapshots(zhp, B_FALSE, func, data, 0, 0)) != 0)
  return (ret);

 return (zfs_iter_filesystems(zhp, func, data));
}
