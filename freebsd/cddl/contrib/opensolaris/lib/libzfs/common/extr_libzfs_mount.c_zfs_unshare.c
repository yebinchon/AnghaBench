
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int ZFS_IS_VOLUME (int *) ;
 int assert (int) ;
 int zfs_unshareall (int *) ;

int
zfs_unshare(zfs_handle_t *zhp)
{
 assert(!ZFS_IS_VOLUME(zhp));
 return (zfs_unshareall(zhp));
}
