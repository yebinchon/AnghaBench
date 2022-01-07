
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {scalar_t__ status; int ptid; scalar_t__ signalled; scalar_t__ stopped; } ;


 scalar_t__ GET_LWP (int ) ;
 scalar_t__ GET_PID (int ) ;
 int PTRACE_CONT ;
 int PTRACE_DETACH ;
 scalar_t__ WIFSTOPPED (scalar_t__) ;
 int WSTOPSIG (scalar_t__) ;
 scalar_t__ debug_lin_lwp ;
 int delete_lwp (int ) ;
 scalar_t__ errno ;
 int error (char*,int ,char*) ;
 int fprintf_unfiltered (int ,char*,int ,int ) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 scalar_t__ ptrace (int ,scalar_t__,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int status_to_str (scalar_t__) ;
 int strsignal (int ) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static int
detach_callback (struct lwp_info *lp, void *data)
{
  gdb_assert (lp->status == 0 || WIFSTOPPED (lp->status));

  if (debug_lin_lwp && lp->status)
    fprintf_unfiltered (gdb_stdlog, "DC:  Pending %s for %s on detach.\n",
   strsignal (WSTOPSIG (lp->status)),
   target_pid_to_str (lp->ptid));

  while (lp->signalled && lp->stopped)
    {
      errno = 0;
      if (ptrace (PTRACE_CONT, GET_LWP (lp->ptid), 0,
    WSTOPSIG (lp->status)) < 0)
 error ("Can't continue %s: %s", target_pid_to_str (lp->ptid),
        safe_strerror (errno));

      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "DC:  PTRACE_CONTINUE (%s, 0, %s) (OK)\n",
       target_pid_to_str (lp->ptid),
       status_to_str (lp->status));

      lp->stopped = 0;
      lp->signalled = 0;
      lp->status = 0;







      gdb_assert (lp->status == 0 || WIFSTOPPED (lp->status));
    }



  if (GET_LWP (lp->ptid) != GET_PID (lp->ptid))
    {
      errno = 0;
      if (ptrace (PTRACE_DETACH, GET_LWP (lp->ptid), 0,
    WSTOPSIG (lp->status)) < 0)
 error ("Can't detach %s: %s", target_pid_to_str (lp->ptid),
        safe_strerror (errno));

      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "PTRACE_DETACH (%s, %s, 0) (OK)\n",
       target_pid_to_str (lp->ptid),
       strsignal (WSTOPSIG (lp->status)));

      delete_lwp (lp->ptid);
    }

  return 0;
}
