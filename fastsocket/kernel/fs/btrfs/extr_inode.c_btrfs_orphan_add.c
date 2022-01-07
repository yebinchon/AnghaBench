
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_5__ {int objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; int orphan_lock; int orphan_inodes; int orphan_item_inserted; struct btrfs_block_rsv* orphan_block_rsv; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_6__ {int runtime_flags; struct btrfs_root* root; } ;
struct TYPE_4__ {struct btrfs_root* tree_root; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_HAS_ORPHAN_ITEM ;
 int BTRFS_INODE_ORPHAN_META_RESERVED ;
 int BUG_ON (int) ;
 int EEXIST ;
 int ENOMEM ;
 int atomic_dec (int *) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 struct btrfs_block_rsv* btrfs_alloc_block_rsv (struct btrfs_root*) ;
 int btrfs_free_block_rsv (struct btrfs_root*,struct btrfs_block_rsv*) ;
 int btrfs_ino (struct inode*) ;
 int btrfs_insert_orphan_item (struct btrfs_trans_handle*,struct btrfs_root*,int ) ;
 int btrfs_orphan_reserve_metadata (struct btrfs_trans_handle*,struct inode*) ;
 int clear_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int xchg (int *,int) ;

int btrfs_orphan_add(struct btrfs_trans_handle *trans, struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_block_rsv *block_rsv = ((void*)0);
 int reserve = 0;
 int insert = 0;
 int ret;

 if (!root->orphan_block_rsv) {
  block_rsv = btrfs_alloc_block_rsv(root);
  if (!block_rsv)
   return -ENOMEM;
 }

 spin_lock(&root->orphan_lock);
 if (!root->orphan_block_rsv) {
  root->orphan_block_rsv = block_rsv;
 } else if (block_rsv) {
  btrfs_free_block_rsv(root, block_rsv);
  block_rsv = ((void*)0);
 }

 if (!test_and_set_bit(BTRFS_INODE_HAS_ORPHAN_ITEM,
         &BTRFS_I(inode)->runtime_flags)) {
  insert = 1;
  atomic_dec(&root->orphan_inodes);
 }

 if (!test_and_set_bit(BTRFS_INODE_ORPHAN_META_RESERVED,
         &BTRFS_I(inode)->runtime_flags))
  reserve = 1;
 spin_unlock(&root->orphan_lock);


 if (reserve) {
  ret = btrfs_orphan_reserve_metadata(trans, inode);
  BUG_ON(ret);
 }


 if (insert >= 1) {
  ret = btrfs_insert_orphan_item(trans, root, btrfs_ino(inode));
  if (ret && ret != -EEXIST) {
   clear_bit(BTRFS_INODE_HAS_ORPHAN_ITEM,
      &BTRFS_I(inode)->runtime_flags);
   btrfs_abort_transaction(trans, root, ret);
   return ret;
  }
  ret = 0;
 }


 if (insert >= 2) {
  ret = btrfs_insert_orphan_item(trans, root->fs_info->tree_root,
            root->root_key.objectid);
  if (ret && ret != -EEXIST) {
   btrfs_abort_transaction(trans, root, ret);
   return ret;
  }
 }
 return 0;
}
