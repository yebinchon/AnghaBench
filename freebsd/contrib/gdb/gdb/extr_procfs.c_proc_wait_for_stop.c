
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tid; int status_valid; int prstatus; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int cmd ;


 int PCWSTOP ;
 int PIOCWSTOP ;
 int PROC_PRETTYFPRINT_STATUS (int ,int ,int ,int ) ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int proc_flags (TYPE_1__*) ;
 int proc_get_current_thread (TYPE_1__*) ;
 int proc_what (TYPE_1__*) ;
 int proc_why (TYPE_1__*) ;
 int write (int ,char*,int) ;

int
proc_wait_for_stop (procinfo *pi)
{
  int win;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  win = (ioctl (pi->ctl_fd, PIOCWSTOP, &pi->prstatus) >= 0);

  if (win)
    {
      pi->status_valid = 1;
      PROC_PRETTYFPRINT_STATUS (proc_flags (pi),
    proc_why (pi),
    proc_what (pi),
    proc_get_current_thread (pi));
    }


  return win;
}
