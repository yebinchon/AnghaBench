
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct journal_head {int b_jcount; struct buffer_head* b_bh; } ;
struct buffer_head {struct journal_head* b_private; TYPE_1__* b_page; int b_count; } ;
struct TYPE_2__ {scalar_t__ mapping; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int J_ASSERT_BH (struct buffer_head*,int) ;
 scalar_t__ atomic_read (int *) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int jbd_lock_bh_journal_head (struct buffer_head*) ;
 int jbd_unlock_bh_journal_head (struct buffer_head*) ;
 struct journal_head* journal_alloc_journal_head () ;
 int journal_free_journal_head (struct journal_head*) ;
 int memset (struct journal_head*,int ,int) ;
 int set_buffer_jbd (struct buffer_head*) ;

struct journal_head *journal_add_journal_head(struct buffer_head *bh)
{
 struct journal_head *jh;
 struct journal_head *new_jh = ((void*)0);

repeat:
 if (!buffer_jbd(bh)) {
  new_jh = journal_alloc_journal_head();
  memset(new_jh, 0, sizeof(*new_jh));
 }

 jbd_lock_bh_journal_head(bh);
 if (buffer_jbd(bh)) {
  jh = bh2jh(bh);
 } else {
  J_ASSERT_BH(bh,
   (atomic_read(&bh->b_count) > 0) ||
   (bh->b_page && bh->b_page->mapping));

  if (!new_jh) {
   jbd_unlock_bh_journal_head(bh);
   goto repeat;
  }

  jh = new_jh;
  new_jh = ((void*)0);
  set_buffer_jbd(bh);
  bh->b_private = jh;
  jh->b_bh = bh;
  get_bh(bh);
  BUFFER_TRACE(bh, "added journal_head");
 }
 jh->b_jcount++;
 jbd_unlock_bh_journal_head(bh);
 if (new_jh)
  journal_free_journal_head(new_jh);
 return bh->b_private;
}
