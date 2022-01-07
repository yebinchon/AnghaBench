
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int __journal_remove_journal_head (struct buffer_head*) ;
 int jbd_lock_bh_journal_head (struct buffer_head*) ;
 int jbd_unlock_bh_journal_head (struct buffer_head*) ;

void journal_remove_journal_head(struct buffer_head *bh)
{
 jbd_lock_bh_journal_head(bh);
 __journal_remove_journal_head(bh);
 jbd_unlock_bh_journal_head(bh);
}
