
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {int log_transid; unsigned long log_batch; unsigned long last_log_commit; int * log_commit_wait; int * log_commit; int log_mutex; TYPE_1__* fs_info; TYPE_2__* node; int dirty_log_pages; int log_writer_wait; int log_writers; scalar_t__ log_start_pid; int root_item; scalar_t__ log_multiple_pids; struct btrfs_root* log_root; } ;
struct TYPE_5__ {int start; } ;
struct TYPE_4__ {scalar_t__ last_trans_log_full_commit; int tree_root; int super_for_commit; struct btrfs_root* log_root_tree; } ;


 int EAGAIN ;
 int ENOSPC ;
 int EXTENT_DIRTY ;
 int EXTENT_NEW ;
 int SSD ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 int btrfs_header_level (TYPE_2__*) ;
 int btrfs_scrub_continue_super (struct btrfs_root*) ;
 int btrfs_scrub_pause_super (struct btrfs_root*) ;
 int btrfs_set_root_node (int *,TYPE_2__*) ;
 int btrfs_set_super_log_root (int ,int ) ;
 int btrfs_set_super_log_root_level (int ,int ) ;
 int btrfs_test_opt (struct btrfs_root*,int ) ;
 int btrfs_wait_marked_extents (struct btrfs_root*,int *,int) ;
 int btrfs_write_and_wait_marked_extents (struct btrfs_root*,int *,int) ;
 int btrfs_write_marked_extents (struct btrfs_root*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_uninterruptible (int) ;
 int smp_mb () ;
 int update_log_root (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int wait_for_writer (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int wait_log_commit (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int write_ctree_super (struct btrfs_trans_handle*,int ,int) ;

int btrfs_sync_log(struct btrfs_trans_handle *trans,
     struct btrfs_root *root)
{
 int index1;
 int index2;
 int mark;
 int ret;
 struct btrfs_root *log = root->log_root;
 struct btrfs_root *log_root_tree = root->fs_info->log_root_tree;
 unsigned long log_transid = 0;

 mutex_lock(&root->log_mutex);
 index1 = root->log_transid % 2;
 if (atomic_read(&root->log_commit[index1])) {
  wait_log_commit(trans, root, root->log_transid);
  mutex_unlock(&root->log_mutex);
  return 0;
 }
 atomic_set(&root->log_commit[index1], 1);


 if (atomic_read(&root->log_commit[(index1 + 1) % 2]))
  wait_log_commit(trans, root, root->log_transid - 1);
 while (1) {
  unsigned long batch = root->log_batch;

  if (!btrfs_test_opt(root, SSD) && root->log_multiple_pids) {
   mutex_unlock(&root->log_mutex);
   schedule_timeout_uninterruptible(1);
   mutex_lock(&root->log_mutex);
  }
  wait_for_writer(trans, root);
  if (batch == root->log_batch)
   break;
 }


 if (root->fs_info->last_trans_log_full_commit == trans->transid) {
  ret = -EAGAIN;
  mutex_unlock(&root->log_mutex);
  goto out;
 }

 log_transid = root->log_transid;
 if (log_transid % 2 == 0)
  mark = EXTENT_DIRTY;
 else
  mark = EXTENT_NEW;




 ret = btrfs_write_marked_extents(log, &log->dirty_log_pages, mark);
 if (ret) {
  btrfs_abort_transaction(trans, root, ret);
  mutex_unlock(&root->log_mutex);
  goto out;
 }

 btrfs_set_root_node(&log->root_item, log->node);

 root->log_batch = 0;
 root->log_transid++;
 log->log_transid = root->log_transid;
 root->log_start_pid = 0;
 smp_mb();





 mutex_unlock(&root->log_mutex);

 mutex_lock(&log_root_tree->log_mutex);
 log_root_tree->log_batch++;
 atomic_inc(&log_root_tree->log_writers);
 mutex_unlock(&log_root_tree->log_mutex);

 ret = update_log_root(trans, log);

 mutex_lock(&log_root_tree->log_mutex);
 if (atomic_dec_and_test(&log_root_tree->log_writers)) {
  smp_mb();
  if (waitqueue_active(&log_root_tree->log_writer_wait))
   wake_up(&log_root_tree->log_writer_wait);
 }

 if (ret) {
  if (ret != -ENOSPC) {
   btrfs_abort_transaction(trans, root, ret);
   mutex_unlock(&log_root_tree->log_mutex);
   goto out;
  }
  root->fs_info->last_trans_log_full_commit = trans->transid;
  btrfs_wait_marked_extents(log, &log->dirty_log_pages, mark);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = -EAGAIN;
  goto out;
 }

 index2 = log_root_tree->log_transid % 2;
 if (atomic_read(&log_root_tree->log_commit[index2])) {
  btrfs_wait_marked_extents(log, &log->dirty_log_pages, mark);
  wait_log_commit(trans, log_root_tree,
    log_root_tree->log_transid);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = 0;
  goto out;
 }
 atomic_set(&log_root_tree->log_commit[index2], 1);

 if (atomic_read(&log_root_tree->log_commit[(index2 + 1) % 2])) {
  wait_log_commit(trans, log_root_tree,
    log_root_tree->log_transid - 1);
 }

 wait_for_writer(trans, log_root_tree);





 if (root->fs_info->last_trans_log_full_commit == trans->transid) {
  btrfs_wait_marked_extents(log, &log->dirty_log_pages, mark);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = -EAGAIN;
  goto out_wake_log_root;
 }

 ret = btrfs_write_and_wait_marked_extents(log_root_tree,
    &log_root_tree->dirty_log_pages,
    EXTENT_DIRTY | EXTENT_NEW);
 if (ret) {
  btrfs_abort_transaction(trans, root, ret);
  mutex_unlock(&log_root_tree->log_mutex);
  goto out_wake_log_root;
 }
 btrfs_wait_marked_extents(log, &log->dirty_log_pages, mark);

 btrfs_set_super_log_root(root->fs_info->super_for_commit,
    log_root_tree->node->start);
 btrfs_set_super_log_root_level(root->fs_info->super_for_commit,
    btrfs_header_level(log_root_tree->node));

 log_root_tree->log_batch = 0;
 log_root_tree->log_transid++;
 smp_mb();

 mutex_unlock(&log_root_tree->log_mutex);
 btrfs_scrub_pause_super(root);
 write_ctree_super(trans, root->fs_info->tree_root, 1);
 btrfs_scrub_continue_super(root);
 ret = 0;

 mutex_lock(&root->log_mutex);
 if (root->last_log_commit < log_transid)
  root->last_log_commit = log_transid;
 mutex_unlock(&root->log_mutex);

out_wake_log_root:
 atomic_set(&log_root_tree->log_commit[index2], 0);
 smp_mb();
 if (waitqueue_active(&log_root_tree->log_commit_wait[index2]))
  wake_up(&log_root_tree->log_commit_wait[index2]);
out:
 atomic_set(&root->log_commit[index1], 0);
 smp_mb();
 if (waitqueue_active(&root->log_commit_wait[index1]))
  wake_up(&root->log_commit_wait[index1]);
 return ret;
}
