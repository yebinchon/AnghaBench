
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int cloned; int stopped; } ;
typedef int ptid_t ;
typedef int pid_t ;


 scalar_t__ ECHILD ;
 int GET_LWP (int ) ;
 int GET_PID (int ) ;
 int PTRACE_ATTACH ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int __WCLONE ;
 struct lwp_info* add_lwp (int ) ;
 int blocked_mask ;
 int child_post_attach (int) ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int error (char*,int ,char*) ;
 struct lwp_info* find_lwp_pid (int ) ;
 int fprintf_unfiltered (int ,char*,int ,...) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int is_lwp (int ) ;
 int printf_filtered (char*,int ) ;
 scalar_t__ ptrace (int ,int,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int sigaddset (int *,int ) ;
 int sigismember (int *,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int status_to_str (int) ;
 int target_pid_to_str (int ) ;
 int waitpid (int,int*,int ) ;

void
lin_lwp_attach_lwp (ptid_t ptid, int verbose)
{
  struct lwp_info *lp;

  gdb_assert (is_lwp (ptid));



  if (!sigismember (&blocked_mask, SIGCHLD))
    {
      sigaddset (&blocked_mask, SIGCHLD);
      sigprocmask (SIG_BLOCK, &blocked_mask, ((void*)0));
    }

  if (verbose)
    printf_filtered ("[New %s]\n", target_pid_to_str (ptid));

  lp = find_lwp_pid (ptid);
  if (lp == ((void*)0))
    lp = add_lwp (ptid);



  if (GET_LWP (ptid) != GET_PID (ptid))
    {
      pid_t pid;
      int status;

      if (ptrace (PTRACE_ATTACH, GET_LWP (ptid), 0, 0) < 0)
 error ("Can't attach %s: %s", target_pid_to_str (ptid),
        safe_strerror (errno));

      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "LLAL: PTRACE_ATTACH %s, 0, 0 (OK)\n",
       target_pid_to_str (ptid));

      pid = waitpid (GET_LWP (ptid), &status, 0);
      if (pid == -1 && errno == ECHILD)
 {

   pid = waitpid (GET_LWP (ptid), &status, __WCLONE);
   lp->cloned = 1;
 }

      gdb_assert (pid == GET_LWP (ptid)
    && WIFSTOPPED (status) && WSTOPSIG (status));

      child_post_attach (pid);

      lp->stopped = 1;

      if (debug_lin_lwp)
 {
   fprintf_unfiltered (gdb_stdlog,
         "LLAL: waitpid %s received %s\n",
         target_pid_to_str (ptid),
         status_to_str (status));
 }
    }
  else
    {






      lp->stopped = 1;
    }
}
