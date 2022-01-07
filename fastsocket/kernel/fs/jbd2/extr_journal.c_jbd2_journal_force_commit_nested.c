
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_tid; } ;
typedef TYPE_1__ transaction_t ;
typedef int tid_t ;
struct TYPE_8__ {int j_state_lock; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_9__ {int journal_info; } ;


 int __jbd2_log_start_commit (TYPE_2__*,int ) ;
 TYPE_5__* current ;
 int jbd2_log_wait_commit (TYPE_2__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_force_commit_nested(journal_t *journal)
{
 transaction_t *transaction = ((void*)0);
 tid_t tid;

 spin_lock(&journal->j_state_lock);
 if (journal->j_running_transaction && !current->journal_info) {
  transaction = journal->j_running_transaction;
  __jbd2_log_start_commit(journal, transaction->t_tid);
 } else if (journal->j_committing_transaction)
  transaction = journal->j_committing_transaction;

 if (!transaction) {
  spin_unlock(&journal->j_state_lock);
  return 0;
 }

 tid = transaction->t_tid;
 spin_unlock(&journal->j_state_lock);
 jbd2_log_wait_commit(journal, tid);
 return 1;
}
