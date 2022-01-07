
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct journal_head* t_sync_datalist; } ;
typedef TYPE_1__ transaction_t ;
struct journal_head {scalar_t__ b_jlist; TYPE_1__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_10__ {int j_wbufsize; int j_list_lock; struct buffer_head** j_wbuf; } ;
typedef TYPE_2__ journal_t ;


 int BJ_Locked ;
 scalar_t__ BJ_SyncData ;
 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int __journal_file_buffer (struct journal_head*,TYPE_1__*,int ) ;
 int __journal_unfile_buffer (struct journal_head*) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int cond_resched () ;
 int get_bh (struct buffer_head*) ;
 int inverted_lock (TYPE_2__*,struct buffer_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 int journal_do_submit_data (struct buffer_head**,int,int) ;
 int journal_remove_journal_head (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 scalar_t__ need_resched () ;
 int put_bh (struct buffer_head*) ;
 int release_data_buffer (struct buffer_head*) ;
 int spin_lock (int *) ;
 scalar_t__ spin_needbreak (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int trace_jbd_do_submit_data (TYPE_2__*,TYPE_1__*) ;
 int trylock_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int journal_submit_data_buffers(journal_t *journal,
           transaction_t *commit_transaction,
           int write_op)
{
 struct journal_head *jh;
 struct buffer_head *bh;
 int locked;
 int bufs = 0;
 struct buffer_head **wbuf = journal->j_wbuf;
 int err = 0;
write_out_data:
 cond_resched();
 spin_lock(&journal->j_list_lock);

 while (commit_transaction->t_sync_datalist) {
  jh = commit_transaction->t_sync_datalist;
  bh = jh2bh(jh);
  locked = 0;



  get_bh(bh);





  if (buffer_dirty(bh)) {
   if (!trylock_buffer(bh)) {
    BUFFER_TRACE(bh, "needs blocking lock");
    spin_unlock(&journal->j_list_lock);
    trace_jbd_do_submit_data(journal,
           commit_transaction);

    journal_do_submit_data(wbuf, bufs, write_op);
    bufs = 0;
    lock_buffer(bh);
    spin_lock(&journal->j_list_lock);
   }
   locked = 1;
  }

  if (!inverted_lock(journal, bh)) {
   jbd_lock_bh_state(bh);
   spin_lock(&journal->j_list_lock);
  }

  if (!buffer_jbd(bh) || bh2jh(bh) != jh
   || jh->b_transaction != commit_transaction
   || jh->b_jlist != BJ_SyncData) {
   jbd_unlock_bh_state(bh);
   if (locked)
    unlock_buffer(bh);
   BUFFER_TRACE(bh, "already cleaned up");
   release_data_buffer(bh);
   continue;
  }
  if (locked && test_clear_buffer_dirty(bh)) {
   BUFFER_TRACE(bh, "needs writeout, adding to array");
   wbuf[bufs++] = bh;
   __journal_file_buffer(jh, commit_transaction,
      BJ_Locked);
   jbd_unlock_bh_state(bh);
   if (bufs == journal->j_wbufsize) {
    spin_unlock(&journal->j_list_lock);
    trace_jbd_do_submit_data(journal,
           commit_transaction);
    journal_do_submit_data(wbuf, bufs, write_op);
    bufs = 0;
    goto write_out_data;
   }
  } else if (!locked && buffer_locked(bh)) {
   __journal_file_buffer(jh, commit_transaction,
      BJ_Locked);
   jbd_unlock_bh_state(bh);
   put_bh(bh);
  } else {
   BUFFER_TRACE(bh, "writeout complete: unfile");
   if (unlikely(!buffer_uptodate(bh)))
    err = -EIO;
   __journal_unfile_buffer(jh);
   jbd_unlock_bh_state(bh);
   if (locked)
    unlock_buffer(bh);
   journal_remove_journal_head(bh);


   put_bh(bh);
   release_data_buffer(bh);
  }

  if (need_resched() || spin_needbreak(&journal->j_list_lock)) {
   spin_unlock(&journal->j_list_lock);
   goto write_out_data;
  }
 }
 spin_unlock(&journal->j_list_lock);
 trace_jbd_do_submit_data(journal, commit_transaction);
 journal_do_submit_data(wbuf, bufs, write_op);

 return err;
}
