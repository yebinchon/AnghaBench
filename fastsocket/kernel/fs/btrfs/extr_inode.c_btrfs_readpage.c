
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct file {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* BTRFS_I (int ) ;
 int btrfs_get_extent ;
 int extent_read_full_page (struct extent_io_tree*,struct page*,int ,int ) ;

int btrfs_readpage(struct file *file, struct page *page)
{
 struct extent_io_tree *tree;
 tree = &BTRFS_I(page->mapping->host)->io_tree;
 return extent_read_full_page(tree, page, btrfs_get_extent, 0);
}
