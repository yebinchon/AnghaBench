
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct address_space {int host; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; } ;


 TYPE_1__* BTRFS_I (int ) ;
 int btrfs_get_extent ;
 int extent_writepages (struct extent_io_tree*,struct address_space*,int ,struct writeback_control*) ;

int btrfs_writepages(struct address_space *mapping,
       struct writeback_control *wbc)
{
 struct extent_io_tree *tree;

 tree = &BTRFS_I(mapping->host)->io_tree;
 return extent_writepages(tree, mapping, btrfs_get_extent, wbc);
}
