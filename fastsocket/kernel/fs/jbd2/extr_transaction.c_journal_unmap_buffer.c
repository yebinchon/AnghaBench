
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int transaction_t ;
struct journal_head {int * b_next_transaction; int b_cp_transaction; int * b_transaction; } ;
struct buffer_head {int * b_bdev; } ;
struct TYPE_3__ {int j_state_lock; int j_list_lock; int * j_running_transaction; int * j_committing_transaction; } ;
typedef TYPE_1__ journal_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT_BH (struct buffer_head*,int) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int __dispose_buffer (struct journal_head*,int *) ;
 int buffer_dirty (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 scalar_t__ buffer_jbddirty (struct buffer_head*) ;
 int clear_buffer_delay (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_jbddirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int clear_buffer_unwritten (struct buffer_head*) ;
 struct journal_head* jbd2_journal_grab_journal_head (struct buffer_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 int set_buffer_freed (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int journal_unmap_buffer(journal_t *journal, struct buffer_head *bh)
{
 transaction_t *transaction;
 struct journal_head *jh;
 int may_free = 1;
 int ret;

 BUFFER_TRACE(bh, "entry");







 if (!buffer_jbd(bh))
  goto zap_buffer_unlocked;


 spin_lock(&journal->j_state_lock);
 jbd_lock_bh_state(bh);
 spin_lock(&journal->j_list_lock);

 jh = jbd2_journal_grab_journal_head(bh);
 if (!jh)
  goto zap_buffer_no_jh;
 transaction = jh->b_transaction;
 if (transaction == ((void*)0)) {




  if (!jh->b_cp_transaction) {
   JBUFFER_TRACE(jh, "not on any transaction: zap");
   goto zap_buffer;
  }

  if (!buffer_dirty(bh)) {

   goto zap_buffer;
  }





  if (journal->j_running_transaction) {



   JBUFFER_TRACE(jh, "checkpointed: add to BJ_Forget");
   ret = __dispose_buffer(jh,
     journal->j_running_transaction);
   jbd2_journal_put_journal_head(jh);
   spin_unlock(&journal->j_list_lock);
   jbd_unlock_bh_state(bh);
   spin_unlock(&journal->j_state_lock);
   return ret;
  } else {




   if (journal->j_committing_transaction) {
    JBUFFER_TRACE(jh, "give to committing trans");
    ret = __dispose_buffer(jh,
     journal->j_committing_transaction);
    jbd2_journal_put_journal_head(jh);
    spin_unlock(&journal->j_list_lock);
    jbd_unlock_bh_state(bh);
    spin_unlock(&journal->j_state_lock);
    return ret;
   } else {


    clear_buffer_jbddirty(bh);
    goto zap_buffer;
   }
  }
 } else if (transaction == journal->j_committing_transaction) {
  JBUFFER_TRACE(jh, "on committing transaction");







  set_buffer_freed(bh);
  if (journal->j_running_transaction && buffer_jbddirty(bh))
   jh->b_next_transaction = journal->j_running_transaction;
  jbd2_journal_put_journal_head(jh);
  spin_unlock(&journal->j_list_lock);
  jbd_unlock_bh_state(bh);
  spin_unlock(&journal->j_state_lock);
  return 0;
 } else {






  J_ASSERT_JH(jh, transaction == journal->j_running_transaction);
  JBUFFER_TRACE(jh, "on running transaction");
  may_free = __dispose_buffer(jh, transaction);
 }

zap_buffer:
 jbd2_journal_put_journal_head(jh);
zap_buffer_no_jh:
 spin_unlock(&journal->j_list_lock);
 jbd_unlock_bh_state(bh);
 spin_unlock(&journal->j_state_lock);
zap_buffer_unlocked:
 clear_buffer_dirty(bh);
 J_ASSERT_BH(bh, !buffer_jbddirty(bh));
 clear_buffer_mapped(bh);
 clear_buffer_req(bh);
 clear_buffer_new(bh);
 clear_buffer_delay(bh);
 clear_buffer_unwritten(bh);
 bh->b_bdev = ((void*)0);
 return may_free;
}
