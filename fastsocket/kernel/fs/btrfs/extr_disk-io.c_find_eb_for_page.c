
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int start; int len; } ;


 scalar_t__ PAGE_CACHE_SIZE ;
 struct extent_buffer* find_extent_buffer (struct extent_io_tree*,int,int ) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int page_offset (struct page*) ;

struct extent_buffer *find_eb_for_page(struct extent_io_tree *tree,
           struct page *page, int max_walk)
{
 struct extent_buffer *eb;
 u64 start = page_offset(page);
 u64 target = start;
 u64 min_start;

 if (start < max_walk)
  min_start = 0;
 else
  min_start = start - max_walk;

 while (start >= min_start) {
  eb = find_extent_buffer(tree, start, 0);
  if (eb) {




   if (eb->start <= target &&
       eb->start + eb->len > target)
    return eb;


   free_extent_buffer(eb);
   return ((void*)0);
  }
  if (start == 0)
   break;
  start -= PAGE_CACHE_SIZE;
 }
 return ((void*)0);
}
