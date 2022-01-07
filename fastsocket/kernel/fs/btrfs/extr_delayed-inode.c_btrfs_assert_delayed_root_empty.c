
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_delayed_root {int dummy; } ;


 int WARN_ON (int ) ;
 int btrfs_first_delayed_node (struct btrfs_delayed_root*) ;
 struct btrfs_delayed_root* btrfs_get_delayed_root (struct btrfs_root*) ;

void btrfs_assert_delayed_root_empty(struct btrfs_root *root)
{
 struct btrfs_delayed_root *delayed_root;
 delayed_root = btrfs_get_delayed_root(root);
 WARN_ON(btrfs_first_delayed_node(delayed_root));
}
