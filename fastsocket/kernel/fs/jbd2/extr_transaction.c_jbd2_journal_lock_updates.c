
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_handle_lock; int t_updates; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_5__ {int j_barrier; int j_state_lock; int j_wait_updates; TYPE_1__* j_running_transaction; int j_barrier_count; } ;
typedef TYPE_2__ journal_t ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

void jbd2_journal_lock_updates(journal_t *journal)
{
 DEFINE_WAIT(wait);

 spin_lock(&journal->j_state_lock);
 ++journal->j_barrier_count;


 while (1) {
  transaction_t *transaction = journal->j_running_transaction;

  if (!transaction)
   break;

  spin_lock(&transaction->t_handle_lock);
  if (!transaction->t_updates) {
   spin_unlock(&transaction->t_handle_lock);
   break;
  }
  prepare_to_wait(&journal->j_wait_updates, &wait,
    TASK_UNINTERRUPTIBLE);
  spin_unlock(&transaction->t_handle_lock);
  spin_unlock(&journal->j_state_lock);
  schedule();
  finish_wait(&journal->j_wait_updates, &wait);
  spin_lock(&journal->j_state_lock);
 }
 spin_unlock(&journal->j_state_lock);







 mutex_lock(&journal->j_barrier);
}
