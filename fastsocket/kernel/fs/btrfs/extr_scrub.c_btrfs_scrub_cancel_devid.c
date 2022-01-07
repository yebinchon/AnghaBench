
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct btrfs_device {int dummy; } ;
struct TYPE_2__ {int device_list_mutex; } ;


 int ENODEV ;
 struct btrfs_device* btrfs_find_device (struct btrfs_root*,int ,int *,int *) ;
 int btrfs_scrub_cancel_dev (struct btrfs_root*,struct btrfs_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_scrub_cancel_devid(struct btrfs_root *root, u64 devid)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_device *dev;
 int ret;





 mutex_lock(&fs_info->fs_devices->device_list_mutex);
 dev = btrfs_find_device(root, devid, ((void*)0), ((void*)0));
 if (!dev) {
  mutex_unlock(&fs_info->fs_devices->device_list_mutex);
  return -ENODEV;
 }
 ret = btrfs_scrub_cancel_dev(root, dev);
 mutex_unlock(&fs_info->fs_devices->device_list_mutex);

 return ret;
}
