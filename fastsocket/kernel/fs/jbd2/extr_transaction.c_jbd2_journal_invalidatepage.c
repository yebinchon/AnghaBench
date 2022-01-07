
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;
typedef int journal_t ;


 int BUG () ;
 int J_ASSERT (int) ;
 int PageLocked (struct page*) ;
 int journal_unmap_buffer (int *,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 scalar_t__ try_to_free_buffers (struct page*) ;
 int unlock_buffer (struct buffer_head*) ;

void jbd2_journal_invalidatepage(journal_t *journal,
        struct page *page,
        unsigned long offset)
{
 struct buffer_head *head, *bh, *next;
 unsigned int curr_off = 0;
 int may_free = 1;

 if (!PageLocked(page))
  BUG();
 if (!page_has_buffers(page))
  return;





 head = bh = page_buffers(page);
 do {
  unsigned int next_off = curr_off + bh->b_size;
  next = bh->b_this_page;

  if (offset <= curr_off) {

   lock_buffer(bh);
   may_free &= journal_unmap_buffer(journal, bh);
   unlock_buffer(bh);
  }
  curr_off = next_off;
  bh = next;

 } while (bh != head);

 if (!offset) {
  if (may_free && try_to_free_buffers(page))
   J_ASSERT(!page_has_buffers(page));
 }
}
