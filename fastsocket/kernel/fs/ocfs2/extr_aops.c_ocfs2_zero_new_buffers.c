
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int PageUptodate (struct page*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static void ocfs2_zero_new_buffers(struct page *page, unsigned from, unsigned to)
{
 unsigned int block_start, block_end;
 struct buffer_head *head, *bh;

 BUG_ON(!PageLocked(page));
 if (!page_has_buffers(page))
  return;

 bh = head = page_buffers(page);
 block_start = 0;
 do {
  block_end = block_start + bh->b_size;

  if (buffer_new(bh)) {
   if (block_end > from && block_start < to) {
    if (!PageUptodate(page)) {
     unsigned start, end;

     start = max(from, block_start);
     end = min(to, block_end);

     zero_user_segment(page, start, end);
     set_buffer_uptodate(bh);
    }

    clear_buffer_new(bh);
    mark_buffer_dirty(bh);
   }
  }

  block_start = block_end;
  bh = bh->b_this_page;
 } while (bh != head);
}
