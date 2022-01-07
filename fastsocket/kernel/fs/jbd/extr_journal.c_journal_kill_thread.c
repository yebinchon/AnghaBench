
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_state_lock; int * j_task; int j_wait_done_commit; int j_wait_commit; int j_flags; } ;
typedef TYPE_1__ journal_t ;


 int JFS_UNMOUNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void journal_kill_thread(journal_t *journal)
{
 spin_lock(&journal->j_state_lock);
 journal->j_flags |= JFS_UNMOUNT;

 while (journal->j_task) {
  wake_up(&journal->j_wait_commit);
  spin_unlock(&journal->j_state_lock);
  wait_event(journal->j_wait_done_commit,
    journal->j_task == ((void*)0));
  spin_lock(&journal->j_state_lock);
 }
 spin_unlock(&journal->j_state_lock);
}
