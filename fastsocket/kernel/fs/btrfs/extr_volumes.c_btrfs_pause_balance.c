
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int balance_mutex; int balance_pause_req; int balance_running; int balance_wait_q; int balance_ctl; } ;


 int BUG_ON (scalar_t__) ;
 int ENOTCONN ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

int btrfs_pause_balance(struct btrfs_fs_info *fs_info)
{
 int ret = 0;

 mutex_lock(&fs_info->balance_mutex);
 if (!fs_info->balance_ctl) {
  mutex_unlock(&fs_info->balance_mutex);
  return -ENOTCONN;
 }

 if (atomic_read(&fs_info->balance_running)) {
  atomic_inc(&fs_info->balance_pause_req);
  mutex_unlock(&fs_info->balance_mutex);

  wait_event(fs_info->balance_wait_q,
      atomic_read(&fs_info->balance_running) == 0);

  mutex_lock(&fs_info->balance_mutex);

  BUG_ON(atomic_read(&fs_info->balance_running));
  atomic_dec(&fs_info->balance_pause_req);
 } else {
  ret = -ENOTCONN;
 }

 mutex_unlock(&fs_info->balance_mutex);
 return ret;
}
