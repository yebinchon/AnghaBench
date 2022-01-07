
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_delayed_node {int mutex; } ;
struct btrfs_delayed_item {int dummy; } ;


 struct btrfs_delayed_item* __btrfs_lookup_delayed_insertion_item (struct btrfs_delayed_node*,struct btrfs_key*) ;
 int btrfs_delayed_item_release_metadata (struct btrfs_root*,struct btrfs_delayed_item*) ;
 int btrfs_release_delayed_item (struct btrfs_delayed_item*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int btrfs_delete_delayed_insertion_item(struct btrfs_root *root,
            struct btrfs_delayed_node *node,
            struct btrfs_key *key)
{
 struct btrfs_delayed_item *item;

 mutex_lock(&node->mutex);
 item = __btrfs_lookup_delayed_insertion_item(node, key);
 if (!item) {
  mutex_unlock(&node->mutex);
  return 1;
 }

 btrfs_delayed_item_release_metadata(root, item);
 btrfs_release_delayed_item(item);
 mutex_unlock(&node->mutex);
 return 0;
}
