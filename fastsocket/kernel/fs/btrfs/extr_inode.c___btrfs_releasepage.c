
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct extent_map_tree {int dummy; } ;
struct extent_io_tree {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct extent_map_tree extent_tree; struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* BTRFS_I (int ) ;
 int ClearPagePrivate (struct page*) ;
 int page_cache_release (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int try_release_extent_mapping (struct extent_map_tree*,struct extent_io_tree*,struct page*,int ) ;

__attribute__((used)) static int __btrfs_releasepage(struct page *page, gfp_t gfp_flags)
{
 struct extent_io_tree *tree;
 struct extent_map_tree *map;
 int ret;

 tree = &BTRFS_I(page->mapping->host)->io_tree;
 map = &BTRFS_I(page->mapping->host)->extent_tree;
 ret = try_release_extent_mapping(map, tree, page, gfp_flags);
 if (ret == 1) {
  ClearPagePrivate(page);
  set_page_private(page, 0);
  page_cache_release(page);
 }
 return ret;
}
