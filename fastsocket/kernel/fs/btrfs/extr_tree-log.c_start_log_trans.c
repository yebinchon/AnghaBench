
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {scalar_t__ log_start_pid; int log_multiple_pids; int log_mutex; int log_writers; int log_batch; TYPE_2__* fs_info; scalar_t__ log_root; } ;
struct TYPE_4__ {int tree_log_mutex; int log_root_tree; } ;
struct TYPE_3__ {scalar_t__ pid; } ;


 int atomic_inc (int *) ;
 int btrfs_add_log_tree (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_init_log_root_tree (struct btrfs_trans_handle*,TYPE_2__*) ;
 TYPE_1__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int start_log_trans(struct btrfs_trans_handle *trans,
      struct btrfs_root *root)
{
 int ret;
 int err = 0;

 mutex_lock(&root->log_mutex);
 if (root->log_root) {
  if (!root->log_start_pid) {
   root->log_start_pid = current->pid;
   root->log_multiple_pids = 0;
  } else if (root->log_start_pid != current->pid) {
   root->log_multiple_pids = 1;
  }

  root->log_batch++;
  atomic_inc(&root->log_writers);
  mutex_unlock(&root->log_mutex);
  return 0;
 }
 root->log_multiple_pids = 0;
 root->log_start_pid = current->pid;
 mutex_lock(&root->fs_info->tree_log_mutex);
 if (!root->fs_info->log_root_tree) {
  ret = btrfs_init_log_root_tree(trans, root->fs_info);
  if (ret)
   err = ret;
 }
 if (err == 0 && !root->log_root) {
  ret = btrfs_add_log_tree(trans, root);
  if (ret)
   err = ret;
 }
 mutex_unlock(&root->fs_info->tree_log_mutex);
 root->log_batch++;
 atomic_inc(&root->log_writers);
 mutex_unlock(&root->log_mutex);
 return err;
}
