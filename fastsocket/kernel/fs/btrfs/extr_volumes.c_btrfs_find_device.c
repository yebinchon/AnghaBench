
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int devices; int fsid; } ;
struct btrfs_device {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_devices* fs_devices; } ;


 int BTRFS_UUID_SIZE ;
 struct btrfs_device* __find_device (int *,int ,int *) ;
 int memcmp (int ,int *,int ) ;

struct btrfs_device *btrfs_find_device(struct btrfs_root *root, u64 devid,
           u8 *uuid, u8 *fsid)
{
 struct btrfs_device *device;
 struct btrfs_fs_devices *cur_devices;

 cur_devices = root->fs_info->fs_devices;
 while (cur_devices) {
  if (!fsid ||
      !memcmp(cur_devices->fsid, fsid, BTRFS_UUID_SIZE)) {
   device = __find_device(&cur_devices->devices,
            devid, uuid);
   if (device)
    return device;
  }
  cur_devices = cur_devices->seed;
 }
 return ((void*)0);
}
