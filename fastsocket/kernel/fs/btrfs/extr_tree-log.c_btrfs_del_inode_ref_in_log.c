
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {TYPE_1__* fs_info; struct btrfs_root* log_root; } ;
struct TYPE_4__ {scalar_t__ logged_trans; int log_mutex; } ;
struct TYPE_3__ {scalar_t__ last_trans_log_full_commit; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int ENOENT ;
 int ENOSPC ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 int btrfs_del_inode_ref (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,int ,int ,int *) ;
 int btrfs_end_log_trans (struct btrfs_root*) ;
 int btrfs_ino (struct inode*) ;
 int join_running_log_trans (struct btrfs_root*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_del_inode_ref_in_log(struct btrfs_trans_handle *trans,
          struct btrfs_root *root,
          const char *name, int name_len,
          struct inode *inode, u64 dirid)
{
 struct btrfs_root *log;
 u64 index;
 int ret;

 if (BTRFS_I(inode)->logged_trans < trans->transid)
  return 0;

 ret = join_running_log_trans(root);
 if (ret)
  return 0;
 log = root->log_root;
 mutex_lock(&BTRFS_I(inode)->log_mutex);

 ret = btrfs_del_inode_ref(trans, log, name, name_len, btrfs_ino(inode),
      dirid, &index);
 mutex_unlock(&BTRFS_I(inode)->log_mutex);
 if (ret == -ENOSPC) {
  root->fs_info->last_trans_log_full_commit = trans->transid;
  ret = 0;
 } else if (ret < 0 && ret != -ENOENT)
  btrfs_abort_transaction(trans, root, ret);
 btrfs_end_log_trans(root);

 return ret;
}
