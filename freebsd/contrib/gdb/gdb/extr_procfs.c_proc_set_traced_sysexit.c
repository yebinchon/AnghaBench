
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct gdb_proc_ctl_pcsexit TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sysset_t ;
struct TYPE_7__ {scalar_t__ tid; scalar_t__ status_valid; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
struct gdb_proc_ctl_pcsexit {int cmd; char* sysset; } ;


 int PCSEXIT ;
 int PIOCSEXIT ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memcpy (char**,char*,int) ;
 int sysset_t_size (TYPE_1__*) ;
 int write (int ,char*,int) ;
 int xfree (TYPE_2__*) ;
 TYPE_2__* xmalloc (int) ;

int
proc_set_traced_sysexit (procinfo *pi, sysset_t *sysset)
{
  int win;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  win = (ioctl (pi->ctl_fd, PIOCSEXIT, sysset) >= 0);


  pi->status_valid = 0;

  return win;
}
