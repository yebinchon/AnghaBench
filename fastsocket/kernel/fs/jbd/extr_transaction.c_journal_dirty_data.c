
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct journal_head {scalar_t__ b_jlist; TYPE_5__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int j_list_lock; TYPE_5__* j_committing_transaction; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_7__ {TYPE_5__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_8__ {int t_tid; TYPE_1__* t_journal; } ;


 scalar_t__ BJ_Locked ;
 scalar_t__ BJ_None ;
 scalar_t__ BJ_Shadow ;
 scalar_t__ BJ_SyncData ;
 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int __brelse (struct buffer_head*) ;
 int __journal_file_buffer (struct journal_head*,TYPE_5__*,scalar_t__) ;
 int __journal_temp_unlink_buffer (struct journal_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ is_handle_aborted (TYPE_2__*) ;
 int jbd_debug (int,char*,struct journal_head*,int ) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 struct journal_head* journal_add_journal_head (struct buffer_head*) ;
 int journal_put_journal_head (struct journal_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

int journal_dirty_data(handle_t *handle, struct buffer_head *bh)
{
 journal_t *journal = handle->h_transaction->t_journal;
 int need_brelse = 0;
 struct journal_head *jh;
 int ret = 0;

 if (is_handle_aborted(handle))
  return ret;

 jh = journal_add_journal_head(bh);
 JBUFFER_TRACE(jh, "entry");





 jbd_debug(4, "jh: %p, tid:%d\n", jh, handle->h_transaction->t_tid);
 jbd_lock_bh_state(bh);
 spin_lock(&journal->j_list_lock);


 if (!buffer_mapped(bh)) {
  JBUFFER_TRACE(jh, "unmapped buffer, bailing out");
  goto no_journal;
 }

 if (jh->b_transaction) {
  JBUFFER_TRACE(jh, "has transaction");
  if (jh->b_transaction != handle->h_transaction) {
   JBUFFER_TRACE(jh, "belongs to older transaction");
   J_ASSERT_JH(jh, jh->b_transaction ==
     journal->j_committing_transaction);
   if (jh->b_jlist != BJ_None &&
     jh->b_jlist != BJ_SyncData &&
     jh->b_jlist != BJ_Locked) {
    JBUFFER_TRACE(jh, "Not stealing");
    goto no_journal;
   }







   if (buffer_dirty(bh)) {
    get_bh(bh);
    spin_unlock(&journal->j_list_lock);
    jbd_unlock_bh_state(bh);
    need_brelse = 1;
    sync_dirty_buffer(bh);
    jbd_lock_bh_state(bh);
    spin_lock(&journal->j_list_lock);

    if (!buffer_mapped(bh)) {
     JBUFFER_TRACE(jh, "buffer got unmapped");
     goto no_journal;
    }


   }






   if (unlikely(!buffer_uptodate(bh))) {
    ret = -EIO;
    goto no_journal;
   }

   if (jh->b_transaction != ((void*)0)) {
    JBUFFER_TRACE(jh, "unfile from commit");
    __journal_temp_unlink_buffer(jh);




    jh->b_transaction = handle->h_transaction;
   }


  }






  if (jh->b_jlist != BJ_SyncData && jh->b_jlist != BJ_Locked) {
   JBUFFER_TRACE(jh, "not on correct data list: unfile");
   J_ASSERT_JH(jh, jh->b_jlist != BJ_Shadow);
   __journal_temp_unlink_buffer(jh);
   jh->b_transaction = handle->h_transaction;
   JBUFFER_TRACE(jh, "file as data");
   __journal_file_buffer(jh, handle->h_transaction,
      BJ_SyncData);
  }
 } else {
  JBUFFER_TRACE(jh, "not on a transaction");
  __journal_file_buffer(jh, handle->h_transaction, BJ_SyncData);
 }
no_journal:
 spin_unlock(&journal->j_list_lock);
 jbd_unlock_bh_state(bh);
 if (need_brelse) {
  BUFFER_TRACE(bh, "brelse");
  __brelse(bh);
 }
 JBUFFER_TRACE(jh, "exit");
 journal_put_journal_head(jh);
 return ret;
}
