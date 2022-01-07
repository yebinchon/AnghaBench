
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int share_all_proto ;
 int zfs_share_proto (int *,int ) ;

int
zfs_shareall(zfs_handle_t *zhp)
{
 return (zfs_share_proto(zhp, share_all_proto));
}
