
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct lwp_info {scalar_t__ status; scalar_t__ step; scalar_t__ stopped; int ptid; } ;


 int GET_LWP (int ) ;
 int TARGET_SIGNAL_0 ;
 int child_resume (int ,int ,int ) ;
 scalar_t__ debug_lin_lwp ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stdlog ;
 int pid_to_ptid (int ) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static int
resume_callback (struct lwp_info *lp, void *data)
{
  if (lp->stopped && lp->status == 0)
    {
      struct thread_info *tp;

      child_resume (pid_to_ptid (GET_LWP (lp->ptid)), 0, TARGET_SIGNAL_0);
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "RC:  PTRACE_CONT %s, 0, 0 (resume sibling)\n",
       target_pid_to_str (lp->ptid));
      lp->stopped = 0;
      lp->step = 0;
    }

  return 0;
}
