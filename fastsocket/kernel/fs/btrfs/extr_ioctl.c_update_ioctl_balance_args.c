
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_ioctl_balance_args {int stat; int sys; int meta; int data; int state; int flags; } ;
struct btrfs_fs_info {int balance_lock; int balance_cancel_req; int balance_pause_req; int balance_running; struct btrfs_balance_control* balance_ctl; } ;
struct btrfs_balance_control {int stat; int sys; int meta; int data; int flags; } ;


 int BTRFS_BALANCE_STATE_CANCEL_REQ ;
 int BTRFS_BALANCE_STATE_PAUSE_REQ ;
 int BTRFS_BALANCE_STATE_RUNNING ;
 scalar_t__ atomic_read (int *) ;
 int memcpy (int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void update_ioctl_balance_args(struct btrfs_fs_info *fs_info, int lock,
          struct btrfs_ioctl_balance_args *bargs)
{
 struct btrfs_balance_control *bctl = fs_info->balance_ctl;

 bargs->flags = bctl->flags;

 if (atomic_read(&fs_info->balance_running))
  bargs->state |= BTRFS_BALANCE_STATE_RUNNING;
 if (atomic_read(&fs_info->balance_pause_req))
  bargs->state |= BTRFS_BALANCE_STATE_PAUSE_REQ;
 if (atomic_read(&fs_info->balance_cancel_req))
  bargs->state |= BTRFS_BALANCE_STATE_CANCEL_REQ;

 memcpy(&bargs->data, &bctl->data, sizeof(bargs->data));
 memcpy(&bargs->meta, &bctl->meta, sizeof(bargs->meta));
 memcpy(&bargs->sys, &bctl->sys, sizeof(bargs->sys));

 if (lock) {
  spin_lock(&fs_info->balance_lock);
  memcpy(&bargs->stat, &bctl->stat, sizeof(bargs->stat));
  spin_unlock(&fs_info->balance_lock);
 } else {
  memcpy(&bargs->stat, &bctl->stat, sizeof(bargs->stat));
 }
}
