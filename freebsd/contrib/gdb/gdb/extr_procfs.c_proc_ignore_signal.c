
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tid; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int gdb_sigset_t ;


 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 int prdelset (int *,int) ;
 scalar_t__ proc_get_traced_signals (TYPE_1__*,int *) ;
 int proc_set_traced_signals (TYPE_1__*,int *) ;

int
proc_ignore_signal (procinfo *pi, int signo)
{
  gdb_sigset_t temp;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);

  if (pi)
    {
      if (proc_get_traced_signals (pi, &temp))
 {
   prdelset (&temp, signo);
   return proc_set_traced_signals (pi, &temp);
 }
    }

  return 0;
}
