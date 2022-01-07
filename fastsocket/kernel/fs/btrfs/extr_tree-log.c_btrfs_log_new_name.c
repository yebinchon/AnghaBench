
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {scalar_t__ logged_trans; int last_unlink_trans; struct btrfs_root* root; } ;
struct TYPE_3__ {scalar_t__ last_trans_committed; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int btrfs_log_inode_parent (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct dentry*,int) ;

int btrfs_log_new_name(struct btrfs_trans_handle *trans,
   struct inode *inode, struct inode *old_dir,
   struct dentry *parent)
{
 struct btrfs_root * root = BTRFS_I(inode)->root;





 if (S_ISREG(inode->i_mode))
  BTRFS_I(inode)->last_unlink_trans = trans->transid;





 if (BTRFS_I(inode)->logged_trans <=
     root->fs_info->last_trans_committed &&
     (!old_dir || BTRFS_I(old_dir)->logged_trans <=
      root->fs_info->last_trans_committed))
  return 0;

 return btrfs_log_inode_parent(trans, root, inode, parent, 1);
}
