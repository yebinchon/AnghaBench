
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int ptid; int status; int stopped; } ;
typedef int pid_t ;


 scalar_t__ ECHILD ;
 int GET_LWP (int ) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WIFSTOPPED (int) ;
 int __WCLONE ;
 scalar_t__ debug_lin_lwp ;
 int delete_lwp (int ) ;
 int delete_thread (int ) ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int ,...) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 scalar_t__ in_thread_list (int ) ;
 int inferior_ptid ;
 int printf_unfiltered (char*,int ) ;
 int ptid_equal (int ,int ) ;
 int status_to_str (int) ;
 int target_pid_to_str (int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int
wait_lwp (struct lwp_info *lp)
{
  pid_t pid;
  int status;
  int thread_dead = 0;

  gdb_assert (!lp->stopped);
  gdb_assert (lp->status == 0);

  pid = waitpid (GET_LWP (lp->ptid), &status, 0);
  if (pid == -1 && errno == ECHILD)
    {
      pid = waitpid (GET_LWP (lp->ptid), &status, __WCLONE);
      if (pid == -1 && errno == ECHILD)
 {



   thread_dead = 1;
   if (debug_lin_lwp)
     fprintf_unfiltered (gdb_stdlog, "WL: %s vanished.\n",
    target_pid_to_str (lp->ptid));
 }
    }

  if (!thread_dead)
    {
      gdb_assert (pid == GET_LWP (lp->ptid));

      if (debug_lin_lwp)
 {
   fprintf_unfiltered (gdb_stdlog,
         "WL: waitpid %s received %s\n",
         target_pid_to_str (lp->ptid),
         status_to_str (status));
 }
    }


  if (WIFEXITED (status) || WIFSIGNALED (status))
    {
      thread_dead = 1;
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog, "WL: %s exited.\n",
       target_pid_to_str (lp->ptid));
    }

  if (thread_dead)
    {
      if (in_thread_list (lp->ptid))
 {

   if (!ptid_equal (lp->ptid, inferior_ptid))
     delete_thread (lp->ptid);
   printf_unfiltered ("[%s exited]\n",
        target_pid_to_str (lp->ptid));
 }

      delete_lwp (lp->ptid);
      return 0;
    }

  gdb_assert (WIFSTOPPED (status));

  return status;
}
