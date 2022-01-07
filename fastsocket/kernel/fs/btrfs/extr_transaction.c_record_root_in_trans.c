
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ last_trans; scalar_t__ commit_root; scalar_t__ node; int in_trans_setup; TYPE_2__* fs_info; TYPE_1__ root_key; scalar_t__ ref_cows; } ;
struct TYPE_4__ {int fs_roots_radix_lock; int fs_roots_radix; struct btrfs_root* extent_root; } ;


 int BTRFS_ROOT_TRANS_TAG ;
 int WARN_ON (int) ;
 int btrfs_init_reloc_root (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int radix_tree_tag_set (int *,unsigned long,int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int record_root_in_trans(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 if (root->ref_cows && root->last_trans < trans->transid) {
  WARN_ON(root == root->fs_info->extent_root);
  WARN_ON(root->commit_root != root->node);






  root->in_trans_setup = 1;




  smp_wmb();

  spin_lock(&root->fs_info->fs_roots_radix_lock);
  if (root->last_trans == trans->transid) {
   spin_unlock(&root->fs_info->fs_roots_radix_lock);
   return 0;
  }
  radix_tree_tag_set(&root->fs_info->fs_roots_radix,
      (unsigned long)root->root_key.objectid,
      BTRFS_ROOT_TRANS_TAG);
  spin_unlock(&root->fs_info->fs_roots_radix_lock);
  root->last_trans = trans->transid;
  btrfs_init_reloc_root(trans, root);
  smp_wmb();
  root->in_trans_setup = 0;
 }
 return 0;
}
