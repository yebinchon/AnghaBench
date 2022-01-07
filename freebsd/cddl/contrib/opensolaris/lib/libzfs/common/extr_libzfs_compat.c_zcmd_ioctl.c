
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t zc_nvlist_dst_size; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int ENOMEM ;
 scalar_t__ SPA_VERSION_13 ;
 scalar_t__ SPA_VERSION_14 ;
 scalar_t__ SPA_VERSION_15 ;
 int ZFS_CMD_COMPAT_DEADMAN ;
 int ZFS_CMD_COMPAT_EDBP ;
 int ZFS_CMD_COMPAT_INLANES ;
 int ZFS_CMD_COMPAT_LZC ;
 int ZFS_CMD_COMPAT_NONE ;
 int ZFS_CMD_COMPAT_RESUME ;
 int ZFS_CMD_COMPAT_V15 ;
 int ZFS_CMD_COMPAT_V28 ;
 int ZFS_CMD_COMPAT_ZCMD ;





 int ZFS_IOCVER_UNDEF ;

 int errno ;
 int get_zfs_ioctl_version () ;
 scalar_t__ get_zfs_spa_version () ;
 int zcmd_ioctl_compat (int,int,TYPE_1__*,int) ;
 int zfs_ioctl_version ;
 scalar_t__ zfs_spa_version ;

int
zcmd_ioctl(int fd, int request, zfs_cmd_t *zc)
{
 size_t oldsize;
 int ret, cflag = ZFS_CMD_COMPAT_NONE;

 if (zfs_ioctl_version == ZFS_IOCVER_UNDEF)
  zfs_ioctl_version = get_zfs_ioctl_version();

 if (zfs_ioctl_version >= 133) {
  switch (zfs_ioctl_version) {
  case 131:
   cflag = ZFS_CMD_COMPAT_INLANES;
   break;
  case 129:
   cflag = ZFS_CMD_COMPAT_RESUME;
   break;
  case 132:
   cflag = ZFS_CMD_COMPAT_EDBP;
   break;
  case 128:
   cflag = ZFS_CMD_COMPAT_ZCMD;
   break;
  case 130:
   cflag = ZFS_CMD_COMPAT_LZC;
   break;
  case 133:
   cflag = ZFS_CMD_COMPAT_DEADMAN;
   break;
  }
 } else {




  cflag = ZFS_CMD_COMPAT_V28;

  if (zfs_spa_version < 0)
   zfs_spa_version = get_zfs_spa_version();

  if (zfs_spa_version == SPA_VERSION_15 ||
      zfs_spa_version == SPA_VERSION_14 ||
      zfs_spa_version == SPA_VERSION_13)
   cflag = ZFS_CMD_COMPAT_V15;
 }

 oldsize = zc->zc_nvlist_dst_size;
 ret = zcmd_ioctl_compat(fd, request, zc, cflag);

 if (ret == 0 && oldsize < zc->zc_nvlist_dst_size) {
  ret = -1;
  errno = ENOMEM;
 }

 return (ret);
}
