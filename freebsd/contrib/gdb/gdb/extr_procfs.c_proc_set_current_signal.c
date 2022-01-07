
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tid; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
struct TYPE_7__ {int si_signo; int si_uid; int si_pid; scalar_t__ si_code; } ;
typedef TYPE_2__ gdb_siginfo_t ;
typedef int arg ;


 int PCSSIG ;
 int PIOCSSIG ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 int getpid () ;
 int getuid () ;
 scalar_t__ ioctl (int ,int ,void*) ;
 int proc_cursig (TYPE_1__*) ;
 int write (int ,void*,int) ;

int
proc_set_current_signal (procinfo *pi, int signo)
{
  int win;
  struct {
    procfs_ctl_t cmd;

    char sinfo[sizeof (gdb_siginfo_t)];
  } arg;
  gdb_siginfo_t *mysinfo;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  mysinfo = (gdb_siginfo_t *) &arg.sinfo;
  mysinfo->si_signo = signo;
  mysinfo->si_code = 0;
  mysinfo->si_pid = getpid ();
  mysinfo->si_uid = getuid ();





  win = (ioctl (pi->ctl_fd, PIOCSSIG, (void *) &arg.sinfo) >= 0);


  return win;
}
