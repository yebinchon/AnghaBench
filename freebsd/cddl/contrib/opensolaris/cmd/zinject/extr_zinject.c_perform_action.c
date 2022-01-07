
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zi_guid; } ;
typedef TYPE_1__ zinject_record_t ;
struct TYPE_6__ {int zc_cookie; int zc_guid; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;


 int ASSERT (int) ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_FAULTED ;
 int ZFS_IOC_VDEV_SET_STATE ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int strlcpy (int ,char const*,int) ;
 int zfs_fd ;

int
perform_action(const char *pool, zinject_record_t *record, int cmd)
{
 zfs_cmd_t zc = { 0 };

 ASSERT(cmd == VDEV_STATE_DEGRADED || cmd == VDEV_STATE_FAULTED);
 (void) strlcpy(zc.zc_name, pool, sizeof (zc.zc_name));
 zc.zc_guid = record->zi_guid;
 zc.zc_cookie = cmd;

 if (ioctl(zfs_fd, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
  return (0);

 return (1);
}
