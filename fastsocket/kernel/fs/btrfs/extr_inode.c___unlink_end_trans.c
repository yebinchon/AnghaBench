
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {int * block_rsv; int bytes_reserved; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {scalar_t__ enospc_unlink; int trans_block_rsv; int global_block_rsv; } ;


 int BUG_ON (int) ;
 int btrfs_block_rsv_release (struct btrfs_root*,int *,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;

__attribute__((used)) static void __unlink_end_trans(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 if (trans->block_rsv == &root->fs_info->global_block_rsv) {
  btrfs_block_rsv_release(root, trans->block_rsv,
     trans->bytes_reserved);
  trans->block_rsv = &root->fs_info->trans_block_rsv;
  BUG_ON(!root->fs_info->enospc_unlink);
  root->fs_info->enospc_unlink = 0;
 }
 btrfs_end_transaction(trans, root);
}
