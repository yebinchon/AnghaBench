
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {unsigned long log_transid; int log_mutex; int * log_commit_wait; int * log_commit; TYPE_1__* fs_info; } ;
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

__attribute__((used)) static int wait_log_commit(struct btrfs_trans_handle *trans,
      struct btrfs_root *root, unsigned long transid)
{
 DEFINE_WAIT(wait);
 int index = transid % 2;






 do {
  prepare_to_wait(&root->log_commit_wait[index],
    &wait, TASK_UNINTERRUPTIBLE);
  mutex_unlock(&root->log_mutex);

  if (root->fs_info->last_trans_log_full_commit !=
      trans->transid && root->log_transid < transid + 2 &&
      atomic_read(&root->log_commit[index]))
   schedule();

  finish_wait(&root->log_commit_wait[index], &wait);
  mutex_lock(&root->log_mutex);
 } while (root->fs_info->last_trans_log_full_commit !=
   trans->transid && root->log_transid < transid + 2 &&
   atomic_read(&root->log_commit[index]));
 return 0;
}
