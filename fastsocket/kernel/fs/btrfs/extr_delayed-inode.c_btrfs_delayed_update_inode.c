
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_delayed_node {int inode_dirty; int mutex; int count; int inode_item; } ;
struct TYPE_4__ {TYPE_1__* delayed_root; } ;
struct TYPE_3__ {int items; } ;


 scalar_t__ IS_ERR (struct btrfs_delayed_node*) ;
 int PTR_ERR (struct btrfs_delayed_node*) ;
 int atomic_inc (int *) ;
 int btrfs_delayed_inode_reserve_metadata (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct btrfs_delayed_node*) ;
 struct btrfs_delayed_node* btrfs_get_or_create_delayed_node (struct inode*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;
 int fill_stack_inode_item (struct btrfs_trans_handle*,int *,struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_delayed_update_inode(struct btrfs_trans_handle *trans,
          struct btrfs_root *root, struct inode *inode)
{
 struct btrfs_delayed_node *delayed_node;
 int ret = 0;

 delayed_node = btrfs_get_or_create_delayed_node(inode);
 if (IS_ERR(delayed_node))
  return PTR_ERR(delayed_node);

 mutex_lock(&delayed_node->mutex);
 if (delayed_node->inode_dirty) {
  fill_stack_inode_item(trans, &delayed_node->inode_item, inode);
  goto release_node;
 }

 ret = btrfs_delayed_inode_reserve_metadata(trans, root, inode,
         delayed_node);
 if (ret)
  goto release_node;

 fill_stack_inode_item(trans, &delayed_node->inode_item, inode);
 delayed_node->inode_dirty = 1;
 delayed_node->count++;
 atomic_inc(&root->fs_info->delayed_root->items);
release_node:
 mutex_unlock(&delayed_node->mutex);
 btrfs_release_delayed_node(delayed_node);
 return ret;
}
