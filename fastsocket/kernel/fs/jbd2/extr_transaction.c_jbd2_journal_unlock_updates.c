
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ j_barrier_count; int j_wait_transaction_locked; int j_state_lock; int j_barrier; } ;
typedef TYPE_1__ journal_t ;


 int J_ASSERT (int) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void jbd2_journal_unlock_updates (journal_t *journal)
{
 J_ASSERT(journal->j_barrier_count != 0);

 mutex_unlock(&journal->j_barrier);
 spin_lock(&journal->j_state_lock);
 --journal->j_barrier_count;
 spin_unlock(&journal->j_state_lock);
 wake_up(&journal->j_wait_transaction_locked);
}
