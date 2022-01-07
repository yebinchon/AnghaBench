
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct address_space {int host; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; } ;


 TYPE_1__* BTRFS_I (int ) ;
 int btrfs_get_extent ;
 int extent_readpages (struct extent_io_tree*,struct address_space*,struct list_head*,unsigned int,int ) ;

__attribute__((used)) static int
btrfs_readpages(struct file *file, struct address_space *mapping,
  struct list_head *pages, unsigned nr_pages)
{
 struct extent_io_tree *tree;
 tree = &BTRFS_I(mapping->host)->io_tree;
 return extent_readpages(tree, mapping, pages, nr_pages,
    btrfs_get_extent);
}
