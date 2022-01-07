
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int ptid; scalar_t__ cloned; } ;
typedef int pid_t ;


 scalar_t__ ECHILD ;
 int GET_LWP (int ) ;
 int __WCLONE ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int target_pid_to_str (int ) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static int
kill_wait_callback (struct lwp_info *lp, void *data)
{
  pid_t pid;
  if (lp->cloned)
    {
      do
 {
   pid = waitpid (GET_LWP (lp->ptid), ((void*)0), __WCLONE);
   if (pid != (pid_t) -1 && debug_lin_lwp)
     {
       fprintf_unfiltered (gdb_stdlog,
      "KWC: wait %s received unknown.\n",
      target_pid_to_str (lp->ptid));
     }
 }
      while (pid == GET_LWP (lp->ptid));

      gdb_assert (pid == -1 && errno == ECHILD);
    }

  do
    {
      pid = waitpid (GET_LWP (lp->ptid), ((void*)0), 0);
      if (pid != (pid_t) -1 && debug_lin_lwp)
 {
   fprintf_unfiltered (gdb_stdlog,
         "KWC: wait %s received unk.\n",
         target_pid_to_str (lp->ptid));
 }
    }
  while (pid == GET_LWP (lp->ptid));

  gdb_assert (pid == -1 && errno == ECHILD);
  return 0;
}
