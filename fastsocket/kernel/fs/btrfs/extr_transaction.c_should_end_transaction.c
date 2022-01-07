
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int global_block_rsv; } ;


 int btrfs_block_rsv_check (struct btrfs_root*,int *,int) ;

__attribute__((used)) static int should_end_transaction(struct btrfs_trans_handle *trans,
      struct btrfs_root *root)
{
 int ret;

 ret = btrfs_block_rsv_check(root, &root->fs_info->global_block_rsv, 5);
 return ret ? 1 : 0;
}
