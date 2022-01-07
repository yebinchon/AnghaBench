
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_io_tree {int dummy; } ;


 int btrfs_panic (int ,int,char*) ;
 int tree_fs_info (struct extent_io_tree*) ;

void extent_io_tree_panic(struct extent_io_tree *tree, int err)
{
 btrfs_panic(tree_fs_info(tree), err, "Locking error: "
      "Extent tree was modified by another "
      "thread while locked.");
}
