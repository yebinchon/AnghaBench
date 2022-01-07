
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int share_all_proto ;
 int zfs_unshare_proto (int *,char const*,int ) ;

int
zfs_unshareall_bypath(zfs_handle_t *zhp, const char *mountpoint)
{
 return (zfs_unshare_proto(zhp, mountpoint, share_all_proto));
}
