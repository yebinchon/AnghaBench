
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pr_flags; } ;
typedef TYPE_1__ prrun_t ;
typedef int prrun ;
struct TYPE_9__ {scalar_t__ ctl_fd; } ;
typedef TYPE_2__ procinfo ;
typedef int procfs_ctl_t ;
typedef int cmd ;


 int FD_CTL ;
 int PCRUN ;
 int PIOCRUN ;
 int PRCFAULT ;
 int PRCSIG ;
 int PRSTEP ;
 scalar_t__ ioctl (scalar_t__,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ open_procinfo_files (TYPE_2__*,int ) ;
 int proc_set_current_signal (TYPE_2__*,int) ;
 int write (scalar_t__,char*,int) ;

int
proc_run_process (procinfo *pi, int step, int signo)
{
  int win;
  int runflags;






  if (pi->ctl_fd == 0 &&
      open_procinfo_files (pi, FD_CTL) == 0)
    {
      return 0;
    }

  runflags = PRCFAULT;
  if (step)
    runflags |= PRSTEP;
  if (signo == 0)
    runflags |= PRCSIG;
  else if (signo != -1)
    proc_set_current_signal (pi, signo);
  {
    prrun_t prrun;

    memset (&prrun, 0, sizeof (prrun));
    prrun.pr_flags = runflags;
    win = (ioctl (pi->ctl_fd, PIOCRUN, &prrun) >= 0);
  }


  return win;
}
