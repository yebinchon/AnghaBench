
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ t_updates; int t_outstanding_credits; int t_tid; int t_handle_lock; TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_12__ {int j_state_lock; int j_wait_updates; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_13__ {int h_buffer_credits; int h_lockdep_map; TYPE_1__* h_transaction; } ;
typedef TYPE_3__ handle_t ;


 int J_ASSERT (int) ;
 int __log_start_commit (TYPE_2__*,int ) ;
 scalar_t__ is_handle_aborted (TYPE_3__*) ;
 int jbd_debug (int,char*,TYPE_3__*) ;
 TYPE_3__* journal_current_handle () ;
 int lock_map_release (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_this_handle (TYPE_2__*,TYPE_3__*) ;
 int wake_up (int *) ;

int journal_restart(handle_t *handle, int nblocks)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal = transaction->t_journal;
 int ret;



 if (is_handle_aborted(handle))
  return 0;





 J_ASSERT(transaction->t_updates > 0);
 J_ASSERT(journal_current_handle() == handle);

 spin_lock(&journal->j_state_lock);
 spin_lock(&transaction->t_handle_lock);
 transaction->t_outstanding_credits -= handle->h_buffer_credits;
 transaction->t_updates--;

 if (!transaction->t_updates)
  wake_up(&journal->j_wait_updates);
 spin_unlock(&transaction->t_handle_lock);

 jbd_debug(2, "restarting handle %p\n", handle);
 __log_start_commit(journal, transaction->t_tid);
 spin_unlock(&journal->j_state_lock);

 lock_map_release(&handle->h_lockdep_map);
 handle->h_buffer_credits = nblocks;
 ret = start_this_handle(journal, handle);
 return ret;
}
