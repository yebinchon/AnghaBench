
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tid; scalar_t__ status_valid; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int gdb_sigset_t ;
typedef int arg ;


 int PCSTRACE ;
 int PIOCSTRACE ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memcpy (char**,char*,int) ;
 int warning (char*) ;
 int write (int ,char*,int) ;

int
proc_set_traced_signals (procinfo *pi, gdb_sigset_t *sigset)
{
  int win;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  win = (ioctl (pi->ctl_fd, PIOCSTRACE, sigset) >= 0);


  pi->status_valid = 0;

  if (!win)
    warning ("procfs: set_traced_signals failed");
  return win;
}
