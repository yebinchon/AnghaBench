
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct journal_head {int b_modified; TYPE_1__* b_next_transaction; TYPE_1__* b_transaction; scalar_t__ b_cp_transaction; int b_frozen_data; int b_committed_data; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int j_list_lock; TYPE_1__* j_committing_transaction; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_8__ {int h_buffer_credits; TYPE_1__* h_transaction; } ;
typedef TYPE_3__ handle_t ;


 int BJ_Forget ;
 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT (int) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int J_EXPECT_JH (struct journal_head*,int,char*) ;
 int __bforget (struct buffer_head*) ;
 int __brelse (struct buffer_head*) ;
 int __jbd2_journal_file_buffer (struct journal_head*,TYPE_1__*,int ) ;
 int __jbd2_journal_temp_unlink_buffer (struct journal_head*) ;
 int __jbd2_journal_unfile_buffer (struct journal_head*) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_jbddirty (struct buffer_head*) ;
 int jbd2_journal_remove_journal_head (struct buffer_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_forget (handle_t *handle, struct buffer_head *bh)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal = transaction->t_journal;
 struct journal_head *jh;
 int drop_reserve = 0;
 int err = 0;
 int was_modified = 0;

 BUFFER_TRACE(bh, "entry");

 jbd_lock_bh_state(bh);
 spin_lock(&journal->j_list_lock);

 if (!buffer_jbd(bh))
  goto not_jbd;
 jh = bh2jh(bh);



 if (!J_EXPECT_JH(jh, !jh->b_committed_data,
    "inconsistent data on disk")) {
  err = -EIO;
  goto not_jbd;
 }


 was_modified = jh->b_modified;





 jh->b_modified = 0;

 if (jh->b_transaction == handle->h_transaction) {
  J_ASSERT_JH(jh, !jh->b_frozen_data);




  clear_buffer_dirty(bh);
  clear_buffer_jbddirty(bh);

  JBUFFER_TRACE(jh, "belongs to current transaction: unfile");





  if (was_modified)
   drop_reserve = 1;
  if (jh->b_cp_transaction) {
   __jbd2_journal_temp_unlink_buffer(jh);
   __jbd2_journal_file_buffer(jh, transaction, BJ_Forget);
  } else {
   __jbd2_journal_unfile_buffer(jh);
   jbd2_journal_remove_journal_head(bh);
   __brelse(bh);
   if (!buffer_jbd(bh)) {
    spin_unlock(&journal->j_list_lock);
    jbd_unlock_bh_state(bh);
    __bforget(bh);
    goto drop;
   }
  }
 } else if (jh->b_transaction) {
  J_ASSERT_JH(jh, (jh->b_transaction ==
     journal->j_committing_transaction));


  JBUFFER_TRACE(jh, "belongs to older transaction");



  if (jh->b_next_transaction) {
   J_ASSERT(jh->b_next_transaction == transaction);
   jh->b_next_transaction = ((void*)0);





   if (was_modified)
    drop_reserve = 1;
  }
 }

not_jbd:
 spin_unlock(&journal->j_list_lock);
 jbd_unlock_bh_state(bh);
 __brelse(bh);
drop:
 if (drop_reserve) {

  handle->h_buffer_credits++;
 }
 return err;
}
