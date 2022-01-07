
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_tid; int t_expires; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_5__ {int j_flags; scalar_t__ j_commit_sequence; scalar_t__ j_commit_request; int j_wait_done_commit; int * j_task; int j_commit_timer; int j_state_lock; TYPE_1__* j_running_transaction; int j_wait_commit; } ;
typedef TYPE_2__ journal_t ;


 int DEFINE_WAIT (int ) ;
 int JBD2_UNMOUNT ;
 int TASK_INTERRUPTIBLE ;
 int commit_timeout ;
 int * current ;
 int del_timer_sync (int *) ;
 int finish_wait (int *,int *) ;
 scalar_t__ freezing (int *) ;
 int jbd2_journal_commit_transaction (TYPE_2__*) ;
 int jbd_debug (int,char*,...) ;
 int jiffies ;
 int prepare_to_wait (int *,int *,int ) ;
 int refrigerator () ;
 int schedule () ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after_eq (int ,int ) ;
 int wait ;
 int wake_up (int *) ;

__attribute__((used)) static int kjournald2(void *arg)
{
 journal_t *journal = arg;
 transaction_t *transaction;





 setup_timer(&journal->j_commit_timer, commit_timeout,
   (unsigned long)current);


 journal->j_task = current;
 wake_up(&journal->j_wait_done_commit);




 spin_lock(&journal->j_state_lock);

loop:
 if (journal->j_flags & JBD2_UNMOUNT)
  goto end_loop;

 jbd_debug(1, "commit_sequence=%d, commit_request=%d\n",
  journal->j_commit_sequence, journal->j_commit_request);

 if (journal->j_commit_sequence != journal->j_commit_request) {
  jbd_debug(1, "OK, requests differ\n");
  spin_unlock(&journal->j_state_lock);
  del_timer_sync(&journal->j_commit_timer);
  jbd2_journal_commit_transaction(journal);
  spin_lock(&journal->j_state_lock);
  goto loop;
 }

 wake_up(&journal->j_wait_done_commit);
 if (freezing(current)) {





  jbd_debug(1, "Now suspending kjournald2\n");
  spin_unlock(&journal->j_state_lock);
  refrigerator();
  spin_lock(&journal->j_state_lock);
 } else {




  DEFINE_WAIT(wait);
  int should_sleep = 1;

  prepare_to_wait(&journal->j_wait_commit, &wait,
    TASK_INTERRUPTIBLE);
  if (journal->j_commit_sequence != journal->j_commit_request)
   should_sleep = 0;
  transaction = journal->j_running_transaction;
  if (transaction && time_after_eq(jiffies,
      transaction->t_expires))
   should_sleep = 0;
  if (journal->j_flags & JBD2_UNMOUNT)
   should_sleep = 0;
  if (should_sleep) {
   spin_unlock(&journal->j_state_lock);
   schedule();
   spin_lock(&journal->j_state_lock);
  }
  finish_wait(&journal->j_wait_commit, &wait);
 }

 jbd_debug(1, "kjournald2 wakes\n");




 transaction = journal->j_running_transaction;
 if (transaction && time_after_eq(jiffies, transaction->t_expires)) {
  journal->j_commit_request = transaction->t_tid;
  jbd_debug(1, "woke because of timeout\n");
 }
 goto loop;

end_loop:
 spin_unlock(&journal->j_state_lock);
 del_timer_sync(&journal->j_commit_timer);
 journal->j_task = ((void*)0);
 wake_up(&journal->j_wait_done_commit);
 jbd_debug(1, "Journal thread exiting.\n");
 return 0;
}
