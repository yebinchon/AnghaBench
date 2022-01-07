
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tid_t ;
struct TYPE_5__ {scalar_t__ j_commit_request; TYPE_1__* j_running_transaction; int j_commit_sequence; int j_wait_commit; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_4__ {scalar_t__ t_tid; } ;


 int WARN_ONCE (int,char*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int jbd_debug (int,char*,scalar_t__,int ) ;
 int tid_geq (scalar_t__,scalar_t__) ;
 int wake_up (int *) ;

int __log_start_commit(journal_t *journal, tid_t target)
{





 if (journal->j_commit_request != target &&
     journal->j_running_transaction &&
     journal->j_running_transaction->t_tid == target) {





  journal->j_commit_request = target;
  jbd_debug(1, "JBD: requesting commit %d/%d\n",
     journal->j_commit_request,
     journal->j_commit_sequence);
  wake_up(&journal->j_wait_commit);
  return 1;
 } else if (!tid_geq(journal->j_commit_request, target))



  WARN_ONCE(1, "jbd: bad log_start_commit: %u %u %u %u\n",
      journal->j_commit_request, journal->j_commit_sequence,
      target, journal->j_running_transaction ?
      journal->j_running_transaction->t_tid : 0);
 return 0;
}
