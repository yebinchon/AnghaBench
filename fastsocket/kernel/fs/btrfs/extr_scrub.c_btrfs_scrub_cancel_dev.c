
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_dev {int cancel_req; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int scrub_lock; int scrub_pause_wait; } ;
struct btrfs_device {struct scrub_dev* scrub_device; } ;


 int ENOTCONN ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int ) ;

int btrfs_scrub_cancel_dev(struct btrfs_root *root, struct btrfs_device *dev)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct scrub_dev *sdev;

 mutex_lock(&fs_info->scrub_lock);
 sdev = dev->scrub_device;
 if (!sdev) {
  mutex_unlock(&fs_info->scrub_lock);
  return -ENOTCONN;
 }
 atomic_inc(&sdev->cancel_req);
 while (dev->scrub_device) {
  mutex_unlock(&fs_info->scrub_lock);
  wait_event(fs_info->scrub_pause_wait,
      dev->scrub_device == ((void*)0));
  mutex_lock(&fs_info->scrub_lock);
 }
 mutex_unlock(&fs_info->scrub_lock);

 return 0;
}
