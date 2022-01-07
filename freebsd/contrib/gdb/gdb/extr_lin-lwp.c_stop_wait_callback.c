
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int stopped; int status; scalar_t__ signalled; int ptid; } ;
typedef void sigset_t ;


 int GET_LWP (int ) ;
 int PTRACE_CONT ;
 scalar_t__ SIGSTOP ;
 scalar_t__ SIGTRAP ;
 scalar_t__ WSTOPSIG (int) ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,char*,...) ;
 int gdb_stdlog ;
 int kill_lwp (int ,scalar_t__) ;
 int ptrace (int ,int ,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 scalar_t__ sigismember (void*,scalar_t__) ;
 char* status_to_str (int) ;
 char* target_pid_to_str (int ) ;
 int wait_lwp (struct lwp_info*) ;

__attribute__((used)) static int
stop_wait_callback (struct lwp_info *lp, void *data)
{
  sigset_t *flush_mask = data;

  if (!lp->stopped)
    {
      int status;

      status = wait_lwp (lp);
      if (status == 0)
 return 0;


      if (flush_mask && sigismember (flush_mask, WSTOPSIG (status)))
 {
   if (!lp->signalled)
     {
       lp->stopped = 1;
       return 0;
     }

   errno = 0;
   ptrace (PTRACE_CONT, GET_LWP (lp->ptid), 0, 0);
   if (debug_lin_lwp)
     fprintf_unfiltered (gdb_stdlog,
    "PTRACE_CONT %s, 0, 0 (%s)\n",
    target_pid_to_str (lp->ptid),
    errno ? safe_strerror (errno) : "OK");

   return stop_wait_callback (lp, flush_mask);
 }

      if (WSTOPSIG (status) != SIGSTOP)
 {
   if (WSTOPSIG (status) == SIGTRAP)
     {
       errno = 0;
       ptrace (PTRACE_CONT, GET_LWP (lp->ptid), 0, 0);
       if (debug_lin_lwp)
  {
    fprintf_unfiltered (gdb_stdlog,
          "PTRACE_CONT %s, 0, 0 (%s)\n",
          target_pid_to_str (lp->ptid),
          errno ? safe_strerror (errno) : "OK");

    fprintf_unfiltered (gdb_stdlog,
          "SWC: Candidate SIGTRAP event in %s\n",
          target_pid_to_str (lp->ptid));
  }

       stop_wait_callback (lp, data);

       if (lp->status)
  {
    if (debug_lin_lwp)
      {
        fprintf_unfiltered (gdb_stdlog,
       "SWC: kill %s, %s\n",
       target_pid_to_str (lp->ptid),
       status_to_str ((int) status));
      }
    kill_lwp (GET_LWP (lp->ptid), WSTOPSIG (lp->status));
  }

       lp->status = status;
       return 0;
     }
   else
     {



       if (debug_lin_lwp)
  {
    fprintf_unfiltered (gdb_stdlog,
          "SWC: Pending event %s in %s\n",
          status_to_str ((int) status),
          target_pid_to_str (lp->ptid));
  }

       errno = 0;
       ptrace (PTRACE_CONT, GET_LWP (lp->ptid), 0, 0);
       if (debug_lin_lwp)
  fprintf_unfiltered (gdb_stdlog,
        "SWC: PTRACE_CONT %s, 0, 0 (%s)\n",
        target_pid_to_str (lp->ptid),
        errno ? safe_strerror (errno) : "OK");



       stop_wait_callback (lp, data);



       if (lp->status == 0)
  lp->status = status;
       else
  {
    if (debug_lin_lwp)
      {
        fprintf_unfiltered (gdb_stdlog,
       "SWC: kill %s, %s\n",
       target_pid_to_str (lp->ptid),
       status_to_str ((int) status));
      }
    kill_lwp (GET_LWP (lp->ptid), WSTOPSIG (status));
  }
       return 0;
     }
 }
      else
 {


   lp->stopped = 1;
   lp->signalled = 0;
 }
    }

  return 0;
}
