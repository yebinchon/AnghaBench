
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zpool_name; TYPE_3__* zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {int zc_cookie; int zc_guid; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int msg ;
struct TYPE_9__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int ZFS_IOC_CLEAR ;
 int ZPOOL_NO_REWIND ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zpool_standard_error (TYPE_3__*,int ,char*) ;

int
zpool_vdev_clear(zpool_handle_t *zhp, uint64_t guid)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot clear errors for %llx"),
     guid);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_guid = guid;
 zc.zc_cookie = ZPOOL_NO_REWIND;

 if (ioctl(hdl->libzfs_fd, ZFS_IOC_CLEAR, &zc) == 0)
  return (0);

 return (zpool_standard_error(hdl, errno, msg));
}
