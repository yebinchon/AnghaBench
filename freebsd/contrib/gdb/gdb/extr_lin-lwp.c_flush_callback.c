
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int status; scalar_t__ stopped; int ptid; int * next; } ;
typedef int sigset_t ;


 int GET_LWP (int ) ;
 int PTRACE_CONT ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int,...) ;
 int gdb_stderr ;
 scalar_t__ lin_lwp_has_pending (int ,int *,int *) ;
 int lin_lwp_thread_alive (int ) ;
 struct lwp_info* lwp_list ;
 int printf_unfiltered (char*,int) ;
 int ptrace (int ,int ,int ,int ) ;
 scalar_t__ sigismember (int *,int ) ;
 int stop_wait_callback (struct lwp_info*,int *) ;

__attribute__((used)) static int
flush_callback (struct lwp_info *lp, void *data)
{
  sigset_t *flush_mask = data;
  sigset_t pending, intersection, blocked, ignored;
  int pid, status;




  if (lwp_list == lp && lp->next == ((void*)0))
    if (!lin_lwp_thread_alive (lp->ptid))
      return 0;
  if (lp->status)
    {
      if (debug_lin_lwp)
 printf_unfiltered ("FC: LP has pending status %06x\n", lp->status);
      if (WIFSTOPPED (lp->status) && sigismember (flush_mask, WSTOPSIG (lp->status)))
 lp->status = 0;
    }

  while (lin_lwp_has_pending (GET_LWP (lp->ptid), &pending, flush_mask))
    {
      int ret;

      errno = 0;
      ret = ptrace (PTRACE_CONT, GET_LWP (lp->ptid), 0, 0);
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stderr,
       "FC: Sent PTRACE_CONT, ret %d %d\n", ret, errno);

      lp->stopped = 0;
      stop_wait_callback (lp, flush_mask);
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stderr,
       "FC: Wait finished; saved status is %d\n",
       lp->status);
    }

  return 0;
}
