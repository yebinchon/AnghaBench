
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pr_ppid; } ;
struct TYPE_7__ {scalar_t__ tid; TYPE_1__ prstatus; int status_valid; int pid; } ;
typedef TYPE_2__ procinfo ;


 TYPE_2__* find_procinfo_or_die (int ,int ) ;
 int proc_get_status (TYPE_2__*) ;

int
proc_parent_pid (procinfo *pi)
{







  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);

  if (!pi->status_valid)
    if (!proc_get_status (pi))
      return 0;

  return pi->prstatus.pr_ppid;
}
