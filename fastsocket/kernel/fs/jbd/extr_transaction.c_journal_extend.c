
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ t_state; int t_outstanding_credits; int t_handle_lock; TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_9__ {int j_max_transaction_buffers; int j_state_lock; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_10__ {int h_buffer_credits; TYPE_1__* h_transaction; } ;
typedef TYPE_3__ handle_t ;


 int EIO ;
 scalar_t__ T_RUNNING ;
 int __log_space_left (TYPE_2__*) ;
 scalar_t__ is_handle_aborted (TYPE_3__*) ;
 int jbd_debug (int,char*,TYPE_3__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int journal_extend(handle_t *handle, int nblocks)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal = transaction->t_journal;
 int result;
 int wanted;

 result = -EIO;
 if (is_handle_aborted(handle))
  goto out;

 result = 1;

 spin_lock(&journal->j_state_lock);


 if (handle->h_transaction->t_state != T_RUNNING) {
  jbd_debug(3, "denied handle %p %d blocks: "
     "transaction not running\n", handle, nblocks);
  goto error_out;
 }

 spin_lock(&transaction->t_handle_lock);
 wanted = transaction->t_outstanding_credits + nblocks;

 if (wanted > journal->j_max_transaction_buffers) {
  jbd_debug(3, "denied handle %p %d blocks: "
     "transaction too large\n", handle, nblocks);
  goto unlock;
 }

 if (wanted > __log_space_left(journal)) {
  jbd_debug(3, "denied handle %p %d blocks: "
     "insufficient log space\n", handle, nblocks);
  goto unlock;
 }

 handle->h_buffer_credits += nblocks;
 transaction->t_outstanding_credits += nblocks;
 result = 0;

 jbd_debug(3, "extended handle %p by %d\n", handle, nblocks);
unlock:
 spin_unlock(&transaction->t_handle_lock);
error_out:
 spin_unlock(&journal->j_state_lock);
out:
 return result;
}
