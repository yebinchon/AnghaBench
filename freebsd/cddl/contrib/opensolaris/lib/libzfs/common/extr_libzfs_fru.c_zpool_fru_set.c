
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* zpool_name; int zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {int zc_guid; int zc_value; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;


 int TEXT_DOMAIN ;
 int ZFS_IOC_VDEV_SETFRU ;
 int dgettext (int ,char*) ;
 int errno ;
 int strncpy (int ,char const*,int) ;
 scalar_t__ zfs_ioctl (int ,int ,TYPE_2__*) ;
 int zpool_standard_error_fmt (int ,int ,int ) ;

int
zpool_fru_set(zpool_handle_t *zhp, uint64_t vdev_guid, const char *fru)
{
 zfs_cmd_t zc = { 0 };

 (void) strncpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 (void) strncpy(zc.zc_value, fru, sizeof (zc.zc_value));
 zc.zc_guid = vdev_guid;

 if (zfs_ioctl(zhp->zpool_hdl, ZFS_IOC_VDEV_SETFRU, &zc) != 0)
  return (zpool_standard_error_fmt(zhp->zpool_hdl, errno,
      dgettext(TEXT_DOMAIN, "cannot set FRU")));

 return (0);
}
