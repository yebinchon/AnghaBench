
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pr_lwppend; } ;
struct TYPE_8__ {int pr_sigpend; TYPE_1__ pr_lwp; } ;
struct TYPE_9__ {scalar_t__ tid; TYPE_2__ prstatus; int status_valid; int pid; } ;
typedef TYPE_3__ procinfo ;
typedef int gdb_sigset_t ;


 TYPE_3__* find_procinfo_or_die (int ,int ) ;
 int memcpy (int *,int *,int) ;
 int proc_get_status (TYPE_3__*) ;

gdb_sigset_t *
proc_get_pending_signals (procinfo *pi, gdb_sigset_t *save)
{
  gdb_sigset_t *ret = ((void*)0);
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);

  if (!pi->status_valid)
    if (!proc_get_status (pi))
      return ((void*)0);




  ret = &pi->prstatus.pr_sigpend;

  if (save && ret)
    memcpy (save, ret, sizeof (gdb_sigset_t));

  return ret;
}
