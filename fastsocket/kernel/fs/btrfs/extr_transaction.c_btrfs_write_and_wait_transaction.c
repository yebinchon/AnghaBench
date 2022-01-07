
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct btrfs_trans_handle {TYPE_2__* transaction; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int dirty_pages; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;


 int EXTENT_DIRTY ;
 int btrfs_write_and_wait_marked_extents (struct btrfs_root*,int *,int ) ;
 int filemap_write_and_wait (int ) ;

int btrfs_write_and_wait_transaction(struct btrfs_trans_handle *trans,
         struct btrfs_root *root)
{
 if (!trans || !trans->transaction) {
  struct inode *btree_inode;
  btree_inode = root->fs_info->btree_inode;
  return filemap_write_and_wait(btree_inode->i_mapping);
 }
 return btrfs_write_and_wait_marked_extents(root,
        &trans->transaction->dirty_pages,
        EXTENT_DIRTY);
}
