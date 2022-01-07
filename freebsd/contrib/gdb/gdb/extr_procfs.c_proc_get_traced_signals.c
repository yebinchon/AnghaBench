
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pr_sigtrace; } ;
struct TYPE_7__ {scalar_t__ tid; int ctl_fd; TYPE_1__ prstatus; int status_valid; int pid; } ;
typedef TYPE_2__ procinfo ;
typedef int gdb_sigset_t ;


 int PIOCGTRACE ;
 TYPE_2__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memcpy (int *,int *,int) ;
 int proc_get_status (TYPE_2__*) ;

gdb_sigset_t *
proc_get_traced_signals (procinfo *pi, gdb_sigset_t *save)
{
  gdb_sigset_t *ret = ((void*)0);
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  {
    static gdb_sigset_t sigtrace;

    if (ioctl (pi->ctl_fd, PIOCGTRACE, &sigtrace) >= 0)
      ret = &sigtrace;
  }

  if (save && ret)
    memcpy (save, ret, sizeof (gdb_sigset_t));

  return ret;
}
