
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_lock; int scrub_cancel_req; int scrubs_running; int scrub_pause_wait; } ;


 int ENOTCONN ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

int __btrfs_scrub_cancel(struct btrfs_fs_info *fs_info)
{

 mutex_lock(&fs_info->scrub_lock);
 if (!atomic_read(&fs_info->scrubs_running)) {
  mutex_unlock(&fs_info->scrub_lock);
  return -ENOTCONN;
 }

 atomic_inc(&fs_info->scrub_cancel_req);
 while (atomic_read(&fs_info->scrubs_running)) {
  mutex_unlock(&fs_info->scrub_lock);
  wait_event(fs_info->scrub_pause_wait,
      atomic_read(&fs_info->scrubs_running) == 0);
  mutex_lock(&fs_info->scrub_lock);
 }
 atomic_dec(&fs_info->scrub_cancel_req);
 mutex_unlock(&fs_info->scrub_lock);

 return 0;
}
