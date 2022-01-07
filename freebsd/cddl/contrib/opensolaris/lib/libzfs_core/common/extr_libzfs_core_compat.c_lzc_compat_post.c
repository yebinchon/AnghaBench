
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_ioc_t ;
struct TYPE_3__ {int zc_nvlist_dst_filled; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int B_FALSE ;
 scalar_t__ ZFS_IOCVER_LZC ;





 scalar_t__ zfs_ioctl_version ;

void
lzc_compat_post(zfs_cmd_t *zc, const zfs_ioc_t ioc)
{
 if (zfs_ioctl_version >= ZFS_IOCVER_LZC)
  return;

 switch (ioc) {
 case 131:
 case 132:
 case 129:
 case 128:
 case 130:
  zc->zc_nvlist_dst_filled = B_FALSE;
 break;
 }
}
