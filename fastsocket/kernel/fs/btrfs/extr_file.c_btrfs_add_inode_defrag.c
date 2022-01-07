
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode_defrag {int root; int transid; int ino; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_2__* fs_info; TYPE_1__ root_key; int last_trans; } ;
struct TYPE_6__ {int runtime_flags; struct btrfs_root* root; } ;
struct TYPE_5__ {int defrag_inodes_lock; } ;


 int AUTO_DEFRAG ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_IN_DEFRAG ;
 int ENOMEM ;
 int GFP_NOFS ;
 int __btrfs_add_inode_defrag (struct inode*,struct inode_defrag*) ;
 scalar_t__ btrfs_fs_closing (TYPE_2__*) ;
 int btrfs_ino (struct inode*) ;
 int btrfs_test_opt (struct btrfs_root*,int ) ;
 int kfree (struct inode_defrag*) ;
 struct inode_defrag* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_add_inode_defrag(struct btrfs_trans_handle *trans,
      struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct inode_defrag *defrag;
 u64 transid;

 if (!btrfs_test_opt(root, AUTO_DEFRAG))
  return 0;

 if (btrfs_fs_closing(root->fs_info))
  return 0;

 if (test_bit(BTRFS_INODE_IN_DEFRAG, &BTRFS_I(inode)->runtime_flags))
  return 0;

 if (trans)
  transid = trans->transid;
 else
  transid = BTRFS_I(inode)->root->last_trans;

 defrag = kzalloc(sizeof(*defrag), GFP_NOFS);
 if (!defrag)
  return -ENOMEM;

 defrag->ino = btrfs_ino(inode);
 defrag->transid = transid;
 defrag->root = root->root_key.objectid;

 spin_lock(&root->fs_info->defrag_inodes_lock);
 if (!test_bit(BTRFS_INODE_IN_DEFRAG, &BTRFS_I(inode)->runtime_flags))
  __btrfs_add_inode_defrag(inode, defrag);
 else
  kfree(defrag);
 spin_unlock(&root->fs_info->defrag_inodes_lock);
 return 0;
}
