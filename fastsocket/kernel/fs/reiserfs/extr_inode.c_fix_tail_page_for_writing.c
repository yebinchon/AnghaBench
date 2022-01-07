
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;


 scalar_t__ buffer_mapped (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int reiserfs_unmap_buffer (struct buffer_head*) ;

__attribute__((used)) static inline void fix_tail_page_for_writing(struct page *page)
{
 struct buffer_head *head, *next, *bh;

 if (page && page_has_buffers(page)) {
  head = page_buffers(page);
  bh = head;
  do {
   next = bh->b_this_page;
   if (buffer_mapped(bh) && bh->b_blocknr == 0) {
    reiserfs_unmap_buffer(bh);
   }
   bh = next;
  } while (bh != head);
 }
}
