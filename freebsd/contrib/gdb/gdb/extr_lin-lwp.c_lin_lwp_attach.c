
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwp_info {int cloned; int stopped; int resumed; int status; } ;
typedef int pid_t ;
struct TYPE_2__ {int (* to_attach ) (char*,int) ;} ;


 int BUILD_LWP (int,int) ;
 scalar_t__ ECHILD ;
 int GET_PID (int ) ;
 scalar_t__ SIGSTOP ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 int W_STOPCODE (scalar_t__) ;
 int __WCLONE ;
 struct lwp_info* add_lwp (int ) ;
 TYPE_1__ child_ops ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,long) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int inferior_ptid ;
 int stub1 (char*,int) ;
 int target_pid_to_str (int ) ;
 int waitpid (int,int*,int ) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
lin_lwp_attach (char *args, int from_tty)
{
  struct lwp_info *lp;
  pid_t pid;
  int status;



  child_ops.to_attach (args, from_tty);


  lp = add_lwp (BUILD_LWP (GET_PID (inferior_ptid), GET_PID (inferior_ptid)));




  pid = waitpid (GET_PID (inferior_ptid), &status, 0);
  if (pid == -1 && errno == ECHILD)
    {
      warning ("%s is a cloned process", target_pid_to_str (inferior_ptid));


      pid = waitpid (GET_PID (inferior_ptid), &status, __WCLONE);
      lp->cloned = 1;
    }

  gdb_assert (pid == GET_PID (inferior_ptid)
       && WIFSTOPPED (status) && WSTOPSIG (status) == SIGSTOP);

  lp->stopped = 1;


  lp->status = W_STOPCODE (SIGSTOP);
  lp->resumed = 1;
  if (debug_lin_lwp)
    {
      fprintf_unfiltered (gdb_stdlog,
     "LLA: waitpid %ld, faking SIGSTOP\n", (long) pid);
    }
}
