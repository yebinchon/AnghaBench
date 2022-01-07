
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ctl_fd; scalar_t__ gregs_valid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int gdb_gregset_t ;
typedef int arg ;


 int FD_CTL ;
 int PCSREG ;
 int PIOCSREG ;
 scalar_t__ ioctl (scalar_t__,int ,char*) ;
 int memcpy (char**,char*,int) ;
 scalar_t__ open_procinfo_files (TYPE_1__*,int ) ;
 int * proc_get_gregs (TYPE_1__*) ;
 int write (scalar_t__,void*,int) ;

int
proc_set_gregs (procinfo *pi)
{
  gdb_gregset_t *gregs;
  int win;

  if ((gregs = proc_get_gregs (pi)) == ((void*)0))
    return 0;

  if (pi->ctl_fd == 0 &&
      open_procinfo_files (pi, FD_CTL) == 0)
    {
      return 0;
    }
  else
    {
      win = (ioctl (pi->ctl_fd, PIOCSREG, gregs) >= 0);

    }


  pi->gregs_valid = 0;
  return win;
}
