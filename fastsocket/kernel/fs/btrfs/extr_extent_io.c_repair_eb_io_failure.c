
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct extent_buffer {int len; int start; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct TYPE_2__ {struct btrfs_mapping_tree mapping_tree; } ;


 scalar_t__ PAGE_CACHE_SIZE ;
 struct page* extent_buffer_page (struct extent_buffer*,unsigned long) ;
 unsigned long num_extent_pages (int ,int ) ;
 int repair_io_failure (struct btrfs_mapping_tree*,int ,scalar_t__,int ,struct page*,int) ;

int repair_eb_io_failure(struct btrfs_root *root, struct extent_buffer *eb,
    int mirror_num)
{
 struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
 u64 start = eb->start;
 unsigned long i, num_pages = num_extent_pages(eb->start, eb->len);
 int ret = 0;

 for (i = 0; i < num_pages; i++) {
  struct page *p = extent_buffer_page(eb, i);
  ret = repair_io_failure(map_tree, start, PAGE_CACHE_SIZE,
     start, p, mirror_num);
  if (ret)
   break;
  start += PAGE_CACHE_SIZE;
 }

 return ret;
}
