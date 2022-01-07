
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_8__ {int j_state_lock; TYPE_1__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_7__ {int t_tid; } ;
struct TYPE_6__ {int t_tid; } ;


 int __log_start_commit (TYPE_3__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int journal_start_commit(journal_t *journal, tid_t *ptid)
{
 int ret = 0;

 spin_lock(&journal->j_state_lock);
 if (journal->j_running_transaction) {
  tid_t tid = journal->j_running_transaction->t_tid;

  __log_start_commit(journal, tid);


  if (ptid)
   *ptid = tid;
  ret = 1;
 } else if (journal->j_committing_transaction) {




  if (ptid)
   *ptid = journal->j_committing_transaction->t_tid;
  ret = 1;
 }
 spin_unlock(&journal->j_state_lock);
 return ret;
}
