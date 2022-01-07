
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int root; } ;
struct btrfs_delayed_ref_node {int dummy; } ;
struct btrfs_delayed_ref_head {int dummy; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 struct btrfs_delayed_ref_head* btrfs_delayed_node_to_head (struct btrfs_delayed_ref_node*) ;
 struct btrfs_delayed_ref_node* find_ref_head (int *,int ,int *,int ) ;

struct btrfs_delayed_ref_head *
btrfs_find_delayed_ref_head(struct btrfs_trans_handle *trans, u64 bytenr)
{
 struct btrfs_delayed_ref_node *ref;
 struct btrfs_delayed_ref_root *delayed_refs;

 delayed_refs = &trans->transaction->delayed_refs;
 ref = find_ref_head(&delayed_refs->root, bytenr, ((void*)0), 0);
 if (ref)
  return btrfs_delayed_node_to_head(ref);
 return ((void*)0);
}
