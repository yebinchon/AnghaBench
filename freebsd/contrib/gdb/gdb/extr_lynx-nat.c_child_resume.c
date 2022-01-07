
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PTRACE_CONT ;
 int PTRACE_CONT_ONE ;
 int PTRACE_SINGLESTEP ;
 int PTRACE_SINGLESTEP_ONE ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int,int,int ,int ) ;
 int target_signal_to_host (int) ;

void
child_resume (ptid_t ptid, int step, enum target_signal signal)
{
  int func;
  int pid = PIDGET (ptid);

  errno = 0;



  if (pid == -1)
    {
      pid = PIDGET (inferior_ptid);
      func = step ? PTRACE_SINGLESTEP : PTRACE_CONT;
    }
  else
    func = step ? PTRACE_SINGLESTEP_ONE : PTRACE_CONT_ONE;
  ptrace (func, pid, (PTRACE_ARG3_TYPE) 1, target_signal_to_host (signal));

  if (errno)
    perror_with_name ("ptrace");
}
