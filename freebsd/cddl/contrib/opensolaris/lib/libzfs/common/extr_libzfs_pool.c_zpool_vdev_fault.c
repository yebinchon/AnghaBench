
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zpool_name; TYPE_3__* zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_9__ {int zc_obj; int zc_cookie; int zc_guid; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int vdev_aux_t ;
typedef int uint64_t ;
typedef int msg ;
struct TYPE_10__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;



 int EZFS_NOREPLICAS ;
 int TEXT_DOMAIN ;
 int VDEV_STATE_FAULTED ;
 int ZFS_IOC_VDEV_SET_STATE ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_error (TYPE_3__*,int ,char*) ;
 int zpool_standard_error (TYPE_3__*,int,char*) ;

int
zpool_vdev_fault(zpool_handle_t *zhp, uint64_t guid, vdev_aux_t aux)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot fault %llu"), guid);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_guid = guid;
 zc.zc_cookie = VDEV_STATE_FAULTED;
 zc.zc_obj = aux;

 if (ioctl(hdl->libzfs_fd, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
  return (0);

 switch (errno) {
 case 128:




  return (zfs_error(hdl, EZFS_NOREPLICAS, msg));

 default:
  return (zpool_standard_error(hdl, errno, msg));
 }

}
