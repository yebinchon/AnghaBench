
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_delayed_tree_ref {int node; } ;
struct btrfs_delayed_ref_root {int lock; int seq_wait; } ;
struct btrfs_delayed_ref_head {int node; struct btrfs_delayed_extent_op* extent_op; } ;
struct btrfs_delayed_extent_op {scalar_t__ is_data; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int add_delayed_ref_head (struct btrfs_fs_info*,struct btrfs_trans_handle*,int *,int ,int ,int,int ) ;
 int add_delayed_tree_ref (struct btrfs_fs_info*,struct btrfs_trans_handle*,int *,int ,int ,int ,int ,int,int,int) ;
 int is_fstree (int ) ;
 int kfree (struct btrfs_delayed_tree_ref*) ;
 void* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

int btrfs_add_delayed_tree_ref(struct btrfs_fs_info *fs_info,
          struct btrfs_trans_handle *trans,
          u64 bytenr, u64 num_bytes, u64 parent,
          u64 ref_root, int level, int action,
          struct btrfs_delayed_extent_op *extent_op,
          int for_cow)
{
 struct btrfs_delayed_tree_ref *ref;
 struct btrfs_delayed_ref_head *head_ref;
 struct btrfs_delayed_ref_root *delayed_refs;

 BUG_ON(extent_op && extent_op->is_data);
 ref = kmalloc(sizeof(*ref), GFP_NOFS);
 if (!ref)
  return -ENOMEM;

 head_ref = kmalloc(sizeof(*head_ref), GFP_NOFS);
 if (!head_ref) {
  kfree(ref);
  return -ENOMEM;
 }

 head_ref->extent_op = extent_op;

 delayed_refs = &trans->transaction->delayed_refs;
 spin_lock(&delayed_refs->lock);





 add_delayed_ref_head(fs_info, trans, &head_ref->node, bytenr,
       num_bytes, action, 0);

 add_delayed_tree_ref(fs_info, trans, &ref->node, bytenr,
       num_bytes, parent, ref_root, level, action,
       for_cow);
 if (!is_fstree(ref_root) &&
     waitqueue_active(&delayed_refs->seq_wait))
  wake_up(&delayed_refs->seq_wait);
 spin_unlock(&delayed_refs->lock);

 return 0;
}
