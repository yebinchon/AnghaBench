
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct journal_head {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef int journal_t ;
typedef int gfp_t ;


 int J_ASSERT (int ) ;
 int PageLocked (struct page*) ;
 int __journal_try_to_free_buffer (int *,struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 struct journal_head* jbd2_journal_grab_journal_head (struct buffer_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int try_to_free_buffers (struct page*) ;

int jbd2_journal_try_to_free_buffers(journal_t *journal,
    struct page *page, gfp_t gfp_mask)
{
 struct buffer_head *head;
 struct buffer_head *bh;
 int ret = 0;

 J_ASSERT(PageLocked(page));

 head = page_buffers(page);
 bh = head;
 do {
  struct journal_head *jh;







  jh = jbd2_journal_grab_journal_head(bh);
  if (!jh)
   continue;

  jbd_lock_bh_state(bh);
  __journal_try_to_free_buffer(journal, bh);
  jbd2_journal_put_journal_head(jh);
  jbd_unlock_bh_state(bh);
  if (buffer_jbd(bh))
   goto busy;
 } while ((bh = bh->b_this_page) != head);

 ret = try_to_free_buffers(page);

busy:
 return ret;
}
