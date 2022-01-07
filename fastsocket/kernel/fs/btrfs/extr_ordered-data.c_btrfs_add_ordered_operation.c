
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_6__ {int ordered_operations; int last_trans; int generation; } ;
struct TYPE_5__ {scalar_t__ last_trans_committed; int ordered_extent_lock; int ordered_operations; TYPE_1__* running_transaction; } ;
struct TYPE_4__ {scalar_t__ blocked; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int btrfs_wait_ordered_range (struct inode*,int ,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ max (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_add_ordered_operation(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, struct inode *inode)
{
 u64 last_mod;

 last_mod = max(BTRFS_I(inode)->generation, BTRFS_I(inode)->last_trans);





 if (last_mod < root->fs_info->last_trans_committed)
  return;





 if (trans && root->fs_info->running_transaction->blocked) {
  btrfs_wait_ordered_range(inode, 0, (u64)-1);
  return;
 }

 spin_lock(&root->fs_info->ordered_extent_lock);
 if (list_empty(&BTRFS_I(inode)->ordered_operations)) {
  list_add_tail(&BTRFS_I(inode)->ordered_operations,
         &root->fs_info->ordered_operations);
 }
 spin_unlock(&root->fs_info->ordered_extent_lock);
}
