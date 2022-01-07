
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_size; scalar_t__ i_nlink; int i_mapping; } ;
struct btrfs_trans_handle {unsigned long blocks_used; struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int sectorsize; TYPE_1__* fs_info; struct btrfs_block_rsv* orphan_block_rsv; } ;
struct btrfs_block_rsv {int size; } ;
struct TYPE_4__ {int runtime_flags; struct btrfs_root* root; } ;
struct TYPE_3__ {struct btrfs_block_rsv trans_block_rsv; } ;


 int BTRFS_EXTENT_DATA_KEY ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_ORDERED_DATA_CLOSE ;
 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_add_ordered_operation (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 struct btrfs_block_rsv* btrfs_alloc_block_rsv (struct btrfs_root*) ;
 int btrfs_block_rsv_migrate (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int) ;
 int btrfs_block_rsv_refill (struct btrfs_root*,struct btrfs_block_rsv*,int) ;
 int btrfs_btree_balance_dirty (struct btrfs_root*,unsigned long) ;
 int btrfs_calc_trunc_metadata_size (struct btrfs_root*,int) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_free_block_rsv (struct btrfs_root*,struct btrfs_block_rsv*) ;
 int btrfs_ordered_update_i_size (struct inode*,int,int *) ;
 int btrfs_orphan_add (struct btrfs_trans_handle*,struct inode*) ;
 int btrfs_orphan_del (struct btrfs_trans_handle*,struct inode*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_truncate_inode_items (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int,int ) ;
 int btrfs_truncate_page (int ,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int btrfs_wait_ordered_range (struct inode*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int btrfs_truncate(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_block_rsv *rsv;
 int ret;
 int err = 0;
 struct btrfs_trans_handle *trans;
 unsigned long nr;
 u64 mask = root->sectorsize - 1;
 u64 min_size = btrfs_calc_trunc_metadata_size(root, 1);

 ret = btrfs_truncate_page(inode->i_mapping, inode->i_size);
 if (ret)
  return ret;

 btrfs_wait_ordered_range(inode, inode->i_size & (~mask), (u64)-1);
 btrfs_ordered_update_i_size(inode, inode->i_size, ((void*)0));
 rsv = btrfs_alloc_block_rsv(root);
 if (!rsv)
  return -ENOMEM;
 rsv->size = min_size;







 trans = btrfs_start_transaction(root, 4);
 if (IS_ERR(trans)) {
  err = PTR_ERR(trans);
  goto out;
 }


 ret = btrfs_block_rsv_migrate(&root->fs_info->trans_block_rsv, rsv,
          min_size);
 BUG_ON(ret);

 ret = btrfs_orphan_add(trans, inode);
 if (ret) {
  btrfs_end_transaction(trans, root);
  goto out;
 }
 if (inode->i_size == 0 && test_bit(BTRFS_INODE_ORDERED_DATA_CLOSE,
        &BTRFS_I(inode)->runtime_flags))
  btrfs_add_ordered_operation(trans, root, inode);

 while (1) {
  ret = btrfs_block_rsv_refill(root, rsv, min_size);
  if (ret) {





   if (ret == -EAGAIN)
    goto end_trans;
   err = ret;
   break;
  }

  if (!trans) {

   trans = btrfs_start_transaction(root, 1);
   if (IS_ERR(trans)) {
    ret = err = PTR_ERR(trans);
    trans = ((void*)0);
    break;
   }
  }

  trans->block_rsv = rsv;

  ret = btrfs_truncate_inode_items(trans, root, inode,
       inode->i_size,
       BTRFS_EXTENT_DATA_KEY);
  if (ret != -EAGAIN) {
   err = ret;
   break;
  }

  trans->block_rsv = &root->fs_info->trans_block_rsv;
  ret = btrfs_update_inode(trans, root, inode);
  if (ret) {
   err = ret;
   break;
  }
end_trans:
  nr = trans->blocks_used;
  btrfs_end_transaction(trans, root);
  trans = ((void*)0);
  btrfs_btree_balance_dirty(root, nr);
 }

 if (ret == 0 && inode->i_nlink > 0) {
  trans->block_rsv = root->orphan_block_rsv;
  ret = btrfs_orphan_del(trans, inode);
  if (ret)
   err = ret;
 } else if (ret && inode->i_nlink > 0) {




  ret = btrfs_orphan_del(((void*)0), inode);
 }

 if (trans) {
  trans->block_rsv = &root->fs_info->trans_block_rsv;
  ret = btrfs_update_inode(trans, root, inode);
  if (ret && !err)
   err = ret;

  nr = trans->blocks_used;
  ret = btrfs_end_transaction(trans, root);
  btrfs_btree_balance_dirty(root, nr);
 }

out:
 btrfs_free_block_rsv(root, rsv);

 if (ret && !err)
  err = ret;

 return err;
}
