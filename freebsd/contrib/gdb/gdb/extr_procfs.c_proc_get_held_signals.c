
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int uc_sigmask; } ;
struct TYPE_9__ {int pr_lwphold; TYPE_1__ pr_context; } ;
struct TYPE_10__ {TYPE_2__ pr_lwp; } ;
struct TYPE_11__ {scalar_t__ tid; int ctl_fd; TYPE_3__ prstatus; int status_valid; int pid; } ;
typedef TYPE_4__ procinfo ;
typedef int gdb_sigset_t ;


 int PIOCGHOLD ;
 TYPE_4__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memcpy (int *,int *,int) ;
 int proc_get_status (TYPE_4__*) ;

gdb_sigset_t *
proc_get_held_signals (procinfo *pi, gdb_sigset_t *save)
{
  gdb_sigset_t *ret = ((void*)0);
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  {
    static gdb_sigset_t sigheld;

    if (ioctl (pi->ctl_fd, PIOCGHOLD, &sigheld) >= 0)
      ret = &sigheld;
  }

  if (save && ret)
    memcpy (save, ret, sizeof (gdb_sigset_t));

  return ret;
}
