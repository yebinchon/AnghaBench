
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct scrub_dev {int stat; } ;
struct btrfs_scrub_progress {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_device {struct scrub_dev* scrub_device; } ;
struct TYPE_4__ {TYPE_1__* fs_devices; } ;
struct TYPE_3__ {int device_list_mutex; } ;


 int ENODEV ;
 int ENOTCONN ;
 struct btrfs_device* btrfs_find_device (struct btrfs_root*,int ,int *,int *) ;
 int memcpy (struct btrfs_scrub_progress*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_scrub_progress(struct btrfs_root *root, u64 devid,
    struct btrfs_scrub_progress *progress)
{
 struct btrfs_device *dev;
 struct scrub_dev *sdev = ((void*)0);

 mutex_lock(&root->fs_info->fs_devices->device_list_mutex);
 dev = btrfs_find_device(root, devid, ((void*)0), ((void*)0));
 if (dev)
  sdev = dev->scrub_device;
 if (sdev)
  memcpy(progress, &sdev->stat, sizeof(*progress));
 mutex_unlock(&root->fs_info->fs_devices->device_list_mutex);

 return dev ? (sdev ? 0 : -ENOTCONN) : -ENODEV;
}
