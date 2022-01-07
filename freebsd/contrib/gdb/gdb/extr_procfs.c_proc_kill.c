
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctl_fd; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int cmd ;


 int FD_CTL ;
 int PCKILL ;
 int PIOCKILL ;
 scalar_t__ ioctl (scalar_t__,int ,int*) ;
 scalar_t__ open_procinfo_files (TYPE_1__*,int ) ;
 int write (scalar_t__,char*,int) ;

int
proc_kill (procinfo *pi, int signo)
{
  int win;






  if (pi->ctl_fd == 0 &&
      open_procinfo_files (pi, FD_CTL) == 0)
    {
      return 0;
    }
  else
    {
      win = (ioctl (pi->ctl_fd, PIOCKILL, &signo) >= 0);

  }

  return win;
}
