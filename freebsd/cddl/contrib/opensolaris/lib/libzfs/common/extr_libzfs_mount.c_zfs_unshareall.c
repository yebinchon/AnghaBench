
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int share_all_proto ;
 int zfs_unshareall_proto (int *,int ) ;

int
zfs_unshareall(zfs_handle_t *zhp)
{
 return (zfs_unshareall_proto(zhp, share_all_proto));
}
