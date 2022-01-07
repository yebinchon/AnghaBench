
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int b_jcount; } ;
struct buffer_head {int dummy; } ;


 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int jbd_lock_bh_journal_head (struct buffer_head*) ;
 int jbd_unlock_bh_journal_head (struct buffer_head*) ;

struct journal_head *jbd2_journal_grab_journal_head(struct buffer_head *bh)
{
 struct journal_head *jh = ((void*)0);

 jbd_lock_bh_journal_head(bh);
 if (buffer_jbd(bh)) {
  jh = bh2jh(bh);
  jh->b_jcount++;
 }
 jbd_unlock_bh_journal_head(bh);
 return jh;
}
