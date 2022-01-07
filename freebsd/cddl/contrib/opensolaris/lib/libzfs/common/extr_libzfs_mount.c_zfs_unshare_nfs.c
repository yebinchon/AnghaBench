
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int nfs_only ;
 int zfs_unshare_proto (int *,char const*,int ) ;

int
zfs_unshare_nfs(zfs_handle_t *zhp, const char *mountpoint)
{
 return (zfs_unshare_proto(zhp, mountpoint, nfs_only));
}
