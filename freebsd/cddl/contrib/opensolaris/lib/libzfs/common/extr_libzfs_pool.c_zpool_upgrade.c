
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {int zc_cookie; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_UPGRADE ;
 int dgettext (int ,char*) ;
 int errno ;
 int strcpy (int ,int ) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_standard_error_fmt (int *,int ,int ,int ) ;

int
zpool_upgrade(zpool_handle_t *zhp, uint64_t new_version)
{
 zfs_cmd_t zc = { 0 };
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) strcpy(zc.zc_name, zhp->zpool_name);
 zc.zc_cookie = new_version;

 if (zfs_ioctl(hdl, ZFS_IOC_POOL_UPGRADE, &zc) != 0)
  return (zpool_standard_error_fmt(hdl, errno,
      dgettext(TEXT_DOMAIN, "cannot upgrade '%s'"),
      zhp->zpool_name));
 return (0);
}
