
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tid; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
struct TYPE_6__ {int si_uid; int si_pid; scalar_t__ si_errno; scalar_t__ si_code; scalar_t__ si_signo; } ;
typedef TYPE_2__ gdb_siginfo_t ;
typedef int arg ;


 int PCSSIG ;
 int PIOCSSIG ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 int getpid () ;
 int getuid () ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int write (int ,void*,int) ;

int
proc_clear_current_signal (procinfo *pi)
{
  int win;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  win = (ioctl (pi->ctl_fd, PIOCSSIG, 0) >= 0);


  return win;
}
