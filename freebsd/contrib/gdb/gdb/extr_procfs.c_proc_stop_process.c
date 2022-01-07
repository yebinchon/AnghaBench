
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ctl_fd; int status_valid; int prstatus; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int cmd ;


 int FD_CTL ;
 int PCSTOP ;
 int PIOCSTOP ;
 int PROC_PRETTYFPRINT_STATUS (int ,int ,int ,int ) ;
 scalar_t__ ioctl (scalar_t__,int ,int *) ;
 scalar_t__ open_procinfo_files (TYPE_1__*,int ) ;
 int proc_flags (TYPE_1__*) ;
 int proc_get_current_thread (TYPE_1__*) ;
 int proc_what (TYPE_1__*) ;
 int proc_why (TYPE_1__*) ;
 int write (scalar_t__,char*,int) ;

int
proc_stop_process (procinfo *pi)
{
  int win;






  if (pi->ctl_fd == 0 &&
      open_procinfo_files (pi, FD_CTL) == 0)
    return 0;
  else
    {




      win = (ioctl (pi->ctl_fd, PIOCSTOP, &pi->prstatus) >= 0);

      if (win)
 {
   pi->status_valid = 1;
   PROC_PRETTYFPRINT_STATUS (proc_flags (pi),
        proc_why (pi),
        proc_what (pi),
        proc_get_current_thread (pi));
 }

    }

  return win;
}
