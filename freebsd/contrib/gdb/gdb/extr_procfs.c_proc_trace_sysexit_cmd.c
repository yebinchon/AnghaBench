
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_SET ;
 int PR_SYSEXIT ;
 int proc_trace_syscalls (char*,int,int ,int ) ;

__attribute__((used)) static void
proc_trace_sysexit_cmd (char *args, int from_tty)
{
  proc_trace_syscalls (args, from_tty, PR_SYSEXIT, FLAG_SET);
}
