
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {int log_writer_wait; int log_mutex; int log_writers; TYPE_1__* fs_info; } ;
struct TYPE_2__ {scalar_t__ last_trans_log_full_commit; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

__attribute__((used)) static void wait_for_writer(struct btrfs_trans_handle *trans,
       struct btrfs_root *root)
{
 DEFINE_WAIT(wait);
 while (root->fs_info->last_trans_log_full_commit !=
        trans->transid && atomic_read(&root->log_writers)) {
  prepare_to_wait(&root->log_writer_wait,
    &wait, TASK_UNINTERRUPTIBLE);
  mutex_unlock(&root->log_mutex);
  if (root->fs_info->last_trans_log_full_commit !=
      trans->transid && atomic_read(&root->log_writers))
   schedule();
  mutex_lock(&root->log_mutex);
  finish_wait(&root->log_writer_wait, &wait);
 }
}
