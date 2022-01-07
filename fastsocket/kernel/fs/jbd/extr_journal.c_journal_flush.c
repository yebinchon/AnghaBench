
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int t_tid; } ;
typedef TYPE_1__ transaction_t ;
typedef int tid_t ;
struct TYPE_11__ {unsigned int j_tail; unsigned int j_head; scalar_t__ j_tail_sequence; scalar_t__ j_transaction_sequence; int j_state_lock; int * j_checkpoint_transactions; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; int j_list_lock; int j_checkpoint_mutex; } ;
typedef TYPE_2__ journal_t ;


 int EIO ;
 int J_ASSERT (int) ;
 int __log_start_commit (TYPE_2__*,int ) ;
 int cleanup_journal_tail (TYPE_2__*) ;
 scalar_t__ is_journal_aborted (TYPE_2__*) ;
 int journal_update_superblock (TYPE_2__*,int) ;
 int log_do_checkpoint (TYPE_2__*) ;
 int log_wait_commit (TYPE_2__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int journal_flush(journal_t *journal)
{
 int err = 0;
 transaction_t *transaction = ((void*)0);
 unsigned int old_tail;

 spin_lock(&journal->j_state_lock);


 if (journal->j_running_transaction) {
  transaction = journal->j_running_transaction;
  __log_start_commit(journal, transaction->t_tid);
 } else if (journal->j_committing_transaction)
  transaction = journal->j_committing_transaction;


 if (transaction) {
  tid_t tid = transaction->t_tid;

  spin_unlock(&journal->j_state_lock);
  log_wait_commit(journal, tid);
 } else {
  spin_unlock(&journal->j_state_lock);
 }


 spin_lock(&journal->j_list_lock);
 while (!err && journal->j_checkpoint_transactions != ((void*)0)) {
  spin_unlock(&journal->j_list_lock);
  mutex_lock(&journal->j_checkpoint_mutex);
  err = log_do_checkpoint(journal);
  mutex_unlock(&journal->j_checkpoint_mutex);
  spin_lock(&journal->j_list_lock);
 }
 spin_unlock(&journal->j_list_lock);

 if (is_journal_aborted(journal))
  return -EIO;

 cleanup_journal_tail(journal);






 spin_lock(&journal->j_state_lock);
 old_tail = journal->j_tail;
 journal->j_tail = 0;
 spin_unlock(&journal->j_state_lock);
 journal_update_superblock(journal, 1);
 spin_lock(&journal->j_state_lock);
 journal->j_tail = old_tail;

 J_ASSERT(!journal->j_running_transaction);
 J_ASSERT(!journal->j_committing_transaction);
 J_ASSERT(!journal->j_checkpoint_transactions);
 J_ASSERT(journal->j_head == journal->j_tail);
 J_ASSERT(journal->j_tail_sequence == journal->j_transaction_sequence);
 spin_unlock(&journal->j_state_lock);
 return 0;
}
