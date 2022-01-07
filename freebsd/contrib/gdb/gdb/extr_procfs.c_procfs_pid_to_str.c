
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int procinfo ;


 int PIDGET (int ) ;
 int TIDGET (int ) ;
 int * find_procinfo (int,int) ;
 int sprintf (char*,char*,int) ;

char *
procfs_pid_to_str (ptid_t ptid)
{
  static char buf[80];
  int proc, thread;
  procinfo *pi;

  proc = PIDGET (ptid);
  thread = TIDGET (ptid);
  pi = find_procinfo (proc, thread);

  if (thread == 0)
    sprintf (buf, "Process %d", proc);
  else
    sprintf (buf, "LWP %d", thread);
  return &buf[0];
}
