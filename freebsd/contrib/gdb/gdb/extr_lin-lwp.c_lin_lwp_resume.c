
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int step; int resumed; scalar_t__ stopped; scalar_t__ status; int ptid; } ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int GET_LWP (int ) ;
 int PIDGET (int ) ;
 int TARGET_SIGNAL_0 ;
 int child_resume (int ,int,int) ;
 scalar_t__ debug_lin_lwp ;
 struct lwp_info* find_lwp_pid (int ) ;
 int fprintf_unfiltered (int ,char*,char*,int ,char*) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int inferior_ptid ;
 int iterate_over_lwps (int ,int *) ;
 int pid_to_ptid (int ) ;
 int resume_callback ;
 int resume_clear_callback ;
 int resume_set_callback ;
 char* strsignal (int) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
lin_lwp_resume (ptid_t ptid, int step, enum target_signal signo)
{
  struct lwp_info *lp;
  int resume_all;


  resume_all = (PIDGET (ptid) == -1);

  if (resume_all)
    iterate_over_lwps (resume_set_callback, ((void*)0));
  else
    iterate_over_lwps (resume_clear_callback, ((void*)0));



  if (PIDGET (ptid) == -1)
    ptid = inferior_ptid;

  lp = find_lwp_pid (ptid);
  if (lp)
    {
      ptid = pid_to_ptid (GET_LWP (lp->ptid));


      lp->step = step;


      lp->resumed = 1;



      if (lp->status)
 {


   gdb_assert (signo == TARGET_SIGNAL_0);
   return;
 }



      lp->stopped = 0;
    }

  if (resume_all)
    iterate_over_lwps (resume_callback, ((void*)0));

  child_resume (ptid, step, signo);
  if (debug_lin_lwp)
    fprintf_unfiltered (gdb_stdlog,
   "LLR: %s %s, %s (resume event thread)\n",
   step ? "PTRACE_SINGLESTEP" : "PTRACE_CONT",
   target_pid_to_str (ptid),
   signo ? strsignal (signo) : "0");
}
