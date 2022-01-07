
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PT_KILL ;
 int inferior_ptid ;
 int null_ptid ;
 int ptrace (int ,int,int ,int ) ;
 int ptrace_wait (int ,int*) ;
 int target_mourn_inferior () ;

void
kill_inferior (void)
{
  int status;
  int pid = PIDGET (inferior_ptid);

  if (pid == 0)
    return;
  ptrace (PT_KILL, pid, (PTRACE_ARG3_TYPE) 0, 0);
  ptrace_wait (null_ptid, &status);
  target_mourn_inferior ();
}
