
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int ZFS_IS_VOLUME (int *) ;
 int assert (int) ;
 int share_all_proto ;
 int zfs_share_proto (int *,int ) ;

int
zfs_share(zfs_handle_t *zhp)
{
 assert(!ZFS_IS_VOLUME(zhp));
 return (zfs_share_proto(zhp, share_all_proto));
}
