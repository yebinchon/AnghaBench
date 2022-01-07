
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct jbd2_inode {int * i_transaction; int i_list; int i_flags; } ;
struct TYPE_5__ {int j_list_lock; int * j_committing_transaction; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_6__ {int wait; } ;


 int DEFINE_WAIT_BIT (TYPE_2__,int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __JI_COMMIT_RUNNING ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int list_del (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 TYPE_2__ wait ;

void jbd2_journal_release_jbd_inode(journal_t *journal,
        struct jbd2_inode *jinode)
{
 int writeout = 0;

 if (!journal)
  return;
restart:
 spin_lock(&journal->j_list_lock);

 if (test_bit(__JI_COMMIT_RUNNING, &jinode->i_flags)) {
  wait_queue_head_t *wq;
  DEFINE_WAIT_BIT(wait, &jinode->i_flags, __JI_COMMIT_RUNNING);
  smp_mb();
  wq = bit_waitqueue(&jinode->i_flags, __JI_COMMIT_RUNNING);
  prepare_to_wait(wq, &wait.wait, TASK_UNINTERRUPTIBLE);
  spin_unlock(&journal->j_list_lock);
  schedule();
  finish_wait(wq, &wait.wait);
  goto restart;
 }


 if (journal->j_committing_transaction == jinode->i_transaction)
  writeout = 1;
 if (jinode->i_transaction) {
  list_del(&jinode->i_list);
  jinode->i_transaction = ((void*)0);
 }
 spin_unlock(&journal->j_list_lock);
}
