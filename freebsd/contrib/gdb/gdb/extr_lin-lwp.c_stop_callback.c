
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int signalled; scalar_t__ status; int ptid; int stopped; } ;


 int GET_LWP (int ) ;
 int SIGSTOP ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int,...) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int kill_lwp (int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static int
stop_callback (struct lwp_info *lp, void *data)
{
  if (!lp->stopped && !lp->signalled)
    {
      int ret;

      if (debug_lin_lwp)
 {
   fprintf_unfiltered (gdb_stdlog,
         "SC:  kill %s **<SIGSTOP>**\n",
         target_pid_to_str (lp->ptid));
 }
      errno = 0;
      ret = kill_lwp (GET_LWP (lp->ptid), SIGSTOP);
      if (debug_lin_lwp)
 {
   fprintf_unfiltered (gdb_stdlog,
         "SC:  lwp kill %d %s\n",
         ret,
         errno ? safe_strerror (errno) : "ERRNO-OK");
 }

      lp->signalled = 1;
      gdb_assert (lp->status == 0);
    }

  return 0;
}
