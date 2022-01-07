
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_6__ {scalar_t__ tid; char* pr_fpregs; } ;
typedef TYPE_1__ tfpregset_t ;
struct TYPE_7__ {scalar_t__ ctl_fd; scalar_t__ tid; scalar_t__ fpregs_valid; } ;
typedef TYPE_2__ procinfo ;
typedef int procfs_ctl_t ;
typedef int gdb_fpregset_t ;
typedef int arg ;


 int FD_CTL ;
 int PCSFPREG ;
 int PIOCSFPREG ;
 int PIOCTSFPREG ;
 scalar_t__ ioctl (scalar_t__,int ,...) ;
 int memcpy (char**,char*,int) ;
 scalar_t__ open_procinfo_files (TYPE_2__*,int ) ;
 int * proc_get_fpregs (TYPE_2__*) ;
 int write (scalar_t__,void*,int) ;

int
proc_set_fpregs (procinfo *pi)
{
  gdb_fpregset_t *fpregs;
  int win;

  if ((fpregs = proc_get_fpregs (pi)) == ((void*)0))
    return 0;

  if (pi->ctl_fd == 0 &&
      open_procinfo_files (pi, FD_CTL) == 0)
    {
      return 0;
    }
  else
    {
      win = (ioctl (pi->ctl_fd, PIOCSFPREG, fpregs) >= 0);


    }


  pi->fpregs_valid = 0;
  return win;
}
