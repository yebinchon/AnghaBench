
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_state; struct buffer_head* b_this_page; struct page* b_page; } ;


 int BH_Uptodate_Lock ;
 int BUG_ON (int) ;
 int PageError (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int bit_spin_lock (int ,int *) ;
 int bit_spin_unlock (int ,int *) ;
 scalar_t__ buffer_async_read (struct buffer_head*) ;
 int buffer_io_error (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_async_read (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct buffer_head* page_buffers (struct page*) ;
 int quiet_error (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void end_buffer_async_read(struct buffer_head *bh, int uptodate)
{
 unsigned long flags;
 struct buffer_head *first;
 struct buffer_head *tmp;
 struct page *page;
 int page_uptodate = 1;

 BUG_ON(!buffer_async_read(bh));

 page = bh->b_page;
 if (uptodate) {
  set_buffer_uptodate(bh);
 } else {
  clear_buffer_uptodate(bh);
  if (!quiet_error(bh))
   buffer_io_error(bh);
  SetPageError(page);
 }






 first = page_buffers(page);
 local_irq_save(flags);
 bit_spin_lock(BH_Uptodate_Lock, &first->b_state);
 clear_buffer_async_read(bh);
 unlock_buffer(bh);
 tmp = bh;
 do {
  if (!buffer_uptodate(tmp))
   page_uptodate = 0;
  if (buffer_async_read(tmp)) {
   BUG_ON(!buffer_locked(tmp));
   goto still_busy;
  }
  tmp = tmp->b_this_page;
 } while (tmp != bh);
 bit_spin_unlock(BH_Uptodate_Lock, &first->b_state);
 local_irq_restore(flags);





 if (page_uptodate && !PageError(page))
  SetPageUptodate(page);
 unlock_page(page);
 return;

still_busy:
 bit_spin_unlock(BH_Uptodate_Lock, &first->b_state);
 local_irq_restore(flags);
 return;
}
