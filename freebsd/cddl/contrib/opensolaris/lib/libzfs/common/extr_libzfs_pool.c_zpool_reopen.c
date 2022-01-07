
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_REOPEN ;
 char* dgettext (int ,char*) ;
 int errno ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_standard_error (int *,int ,char*) ;

int
zpool_reopen(zpool_handle_t *zhp)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot reopen '%s'"),
     zhp->zpool_name);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if (zfs_ioctl(hdl, ZFS_IOC_POOL_REOPEN, &zc) == 0)
  return (0);
 return (zpool_standard_error(hdl, errno, msg));
}
