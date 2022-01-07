
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pathname; int tid; int ctl_fd; int as_fd; int status_fd; int pid; } ;
typedef TYPE_1__ procinfo ;





 int MAX_PROC_NAME_SIZE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int PIOCOPENLWP ;
 TYPE_1__* find_procinfo (int ,int ) ;
 int ioctl (int,int ,int*) ;
 int open_with_retry (char*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
open_procinfo_files (procinfo *pi, int which)
{



  int fd;
  if (pi->tid == 0)
    {
      fd = open_with_retry (pi->pathname, O_RDWR);
      if (fd <= 0)
 return 0;
    }
  else
    {
      return 0;

    }

  pi->ctl_fd = pi->as_fd = pi->status_fd = fd;


  return 1;
}
