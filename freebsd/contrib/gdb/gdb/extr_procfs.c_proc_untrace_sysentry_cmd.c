
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_RESET ;
 int PR_SYSENTRY ;
 int proc_trace_syscalls (char*,int,int ,int ) ;

__attribute__((used)) static void
proc_untrace_sysentry_cmd (char *args, int from_tty)
{
  proc_trace_syscalls (args, from_tty, PR_SYSENTRY, FLAG_RESET);
}
