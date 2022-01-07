
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int btrfs_insert_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_root_item*,int) ;

int btrfs_insert_root(struct btrfs_trans_handle *trans, struct btrfs_root *root,
        struct btrfs_key *key, struct btrfs_root_item *item)
{
 return btrfs_insert_item(trans, root, key, item, sizeof(*item));
}
