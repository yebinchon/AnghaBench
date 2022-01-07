
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_t ;
struct super_block {int dummy; } ;
struct reiserfs_journal {int j_join_wait; int j_state; } ;


 int J_WRITERS_QUEUED ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void queue_log_writer(struct super_block *s)
{
 wait_queue_t wait;
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 set_bit(J_WRITERS_QUEUED, &journal->j_state);





 init_waitqueue_entry(&wait, current);
 add_wait_queue(&journal->j_join_wait, &wait);
 set_current_state(TASK_UNINTERRUPTIBLE);
 if (test_bit(J_WRITERS_QUEUED, &journal->j_state))
  schedule();
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&journal->j_join_wait, &wait);
}
