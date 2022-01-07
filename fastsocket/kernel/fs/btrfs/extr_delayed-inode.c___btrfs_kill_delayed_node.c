
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_delayed_node {int mutex; scalar_t__ inode_dirty; struct btrfs_root* root; } ;
struct btrfs_delayed_item {int dummy; } ;


 struct btrfs_delayed_item* __btrfs_first_delayed_deletion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_first_delayed_insertion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_next_delayed_item (struct btrfs_delayed_item*) ;
 int btrfs_delayed_inode_release_metadata (struct btrfs_root*,struct btrfs_delayed_node*) ;
 int btrfs_delayed_item_release_metadata (struct btrfs_root*,struct btrfs_delayed_item*) ;
 int btrfs_release_delayed_inode (struct btrfs_delayed_node*) ;
 int btrfs_release_delayed_item (struct btrfs_delayed_item*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __btrfs_kill_delayed_node(struct btrfs_delayed_node *delayed_node)
{
 struct btrfs_root *root = delayed_node->root;
 struct btrfs_delayed_item *curr_item, *prev_item;

 mutex_lock(&delayed_node->mutex);
 curr_item = __btrfs_first_delayed_insertion_item(delayed_node);
 while (curr_item) {
  btrfs_delayed_item_release_metadata(root, curr_item);
  prev_item = curr_item;
  curr_item = __btrfs_next_delayed_item(prev_item);
  btrfs_release_delayed_item(prev_item);
 }

 curr_item = __btrfs_first_delayed_deletion_item(delayed_node);
 while (curr_item) {
  btrfs_delayed_item_release_metadata(root, curr_item);
  prev_item = curr_item;
  curr_item = __btrfs_next_delayed_item(prev_item);
  btrfs_release_delayed_item(prev_item);
 }

 if (delayed_node->inode_dirty) {
  btrfs_delayed_inode_release_metadata(root, delayed_node);
  btrfs_release_delayed_inode(delayed_node);
 }
 mutex_unlock(&delayed_node->mutex);
}
