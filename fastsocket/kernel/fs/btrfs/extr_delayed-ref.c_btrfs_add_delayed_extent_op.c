
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_delayed_ref_root {int lock; int seq_wait; } ;
struct btrfs_delayed_ref_head {int node; struct btrfs_delayed_extent_op* extent_op; } ;
struct btrfs_delayed_extent_op {int is_data; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int BTRFS_UPDATE_DELAYED_HEAD ;
 int ENOMEM ;
 int GFP_NOFS ;
 int add_delayed_ref_head (struct btrfs_fs_info*,struct btrfs_trans_handle*,int *,int ,int ,int ,int ) ;
 struct btrfs_delayed_ref_head* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

int btrfs_add_delayed_extent_op(struct btrfs_fs_info *fs_info,
    struct btrfs_trans_handle *trans,
    u64 bytenr, u64 num_bytes,
    struct btrfs_delayed_extent_op *extent_op)
{
 struct btrfs_delayed_ref_head *head_ref;
 struct btrfs_delayed_ref_root *delayed_refs;

 head_ref = kmalloc(sizeof(*head_ref), GFP_NOFS);
 if (!head_ref)
  return -ENOMEM;

 head_ref->extent_op = extent_op;

 delayed_refs = &trans->transaction->delayed_refs;
 spin_lock(&delayed_refs->lock);

 add_delayed_ref_head(fs_info, trans, &head_ref->node, bytenr,
       num_bytes, BTRFS_UPDATE_DELAYED_HEAD,
       extent_op->is_data);

 if (waitqueue_active(&delayed_refs->seq_wait))
  wake_up(&delayed_refs->seq_wait);
 spin_unlock(&delayed_refs->lock);
 return 0;
}
