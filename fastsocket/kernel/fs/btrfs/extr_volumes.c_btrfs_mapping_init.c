
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_mapping_tree {int map_tree; } ;


 int extent_map_tree_init (int *) ;

void btrfs_mapping_init(struct btrfs_mapping_tree *tree)
{
 extent_map_tree_init(&tree->map_tree);
}
