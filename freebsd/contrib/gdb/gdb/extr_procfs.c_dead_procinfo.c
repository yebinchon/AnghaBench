
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pathname; int pid; } ;
typedef TYPE_1__ procinfo ;


 int KILL ;
 int SIGKILL ;
 int destroy_procinfo (TYPE_1__*) ;
 int errno ;
 int error (char*) ;
 int kill (int,int ) ;
 int print_sys_errmsg (char*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
dead_procinfo (procinfo *pi, char *msg, int kill_p)
{
  char procfile[80];

  if (pi->pathname)
    {
      print_sys_errmsg (pi->pathname, errno);
    }
  else
    {
      sprintf (procfile, "process %d", pi->pid);
      print_sys_errmsg (procfile, errno);
    }
  if (kill_p == KILL)
    kill (pi->pid, SIGKILL);

  destroy_procinfo (pi);
  error (msg);
}
