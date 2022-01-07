
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct journal_head {scalar_t__ b_jlist; int * b_transaction; int * b_cp_transaction; int * b_next_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
typedef TYPE_1__ journal_t ;


 scalar_t__ BJ_Locked ;
 scalar_t__ BJ_None ;
 scalar_t__ BJ_SyncData ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __brelse (struct buffer_head*) ;
 int __journal_remove_checkpoint (struct journal_head*) ;
 int __journal_unfile_buffer (struct journal_head*) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int journal_remove_journal_head (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
__journal_try_to_free_buffer(journal_t *journal, struct buffer_head *bh)
{
 struct journal_head *jh;

 jh = bh2jh(bh);

 if (buffer_locked(bh) || buffer_dirty(bh))
  goto out;

 if (jh->b_next_transaction != ((void*)0))
  goto out;

 spin_lock(&journal->j_list_lock);
 if (jh->b_transaction != ((void*)0) && jh->b_cp_transaction == ((void*)0)) {
  if (jh->b_jlist == BJ_SyncData || jh->b_jlist == BJ_Locked) {

   JBUFFER_TRACE(jh, "release data");
   __journal_unfile_buffer(jh);
   journal_remove_journal_head(bh);
   __brelse(bh);
  }
 } else if (jh->b_cp_transaction != ((void*)0) && jh->b_transaction == ((void*)0)) {

  if (jh->b_jlist == BJ_None) {
   JBUFFER_TRACE(jh, "remove from checkpoint list");
   __journal_remove_checkpoint(jh);
   journal_remove_journal_head(bh);
   __brelse(bh);
  }
 }
 spin_unlock(&journal->j_list_lock);
out:
 return;
}
