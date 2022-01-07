
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int balance_mutex; int balance_cancel_req; int balance_running; scalar_t__ balance_ctl; int volume_mutex; int balance_wait_q; } ;


 int BUG_ON (int) ;
 int ENOTCONN ;
 int __cancel_balance (struct btrfs_fs_info*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

int btrfs_cancel_balance(struct btrfs_fs_info *fs_info)
{
 mutex_lock(&fs_info->balance_mutex);
 if (!fs_info->balance_ctl) {
  mutex_unlock(&fs_info->balance_mutex);
  return -ENOTCONN;
 }

 atomic_inc(&fs_info->balance_cancel_req);




 if (atomic_read(&fs_info->balance_running)) {
  mutex_unlock(&fs_info->balance_mutex);
  wait_event(fs_info->balance_wait_q,
      atomic_read(&fs_info->balance_running) == 0);
  mutex_lock(&fs_info->balance_mutex);
 } else {

  mutex_unlock(&fs_info->balance_mutex);
  mutex_lock(&fs_info->volume_mutex);
  mutex_lock(&fs_info->balance_mutex);

  if (fs_info->balance_ctl)
   __cancel_balance(fs_info);

  mutex_unlock(&fs_info->volume_mutex);
 }

 BUG_ON(fs_info->balance_ctl || atomic_read(&fs_info->balance_running));
 atomic_dec(&fs_info->balance_cancel_req);
 mutex_unlock(&fs_info->balance_mutex);
 return 0;
}
