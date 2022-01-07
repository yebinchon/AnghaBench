
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int ptid; } ;


 int GET_LWP (int ) ;
 int PTRACE_KILL ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int ,char*) ;
 int gdb_stdlog ;
 int ptrace (int ,int ,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static int
kill_callback (struct lwp_info *lp, void *data)
{
  errno = 0;
  ptrace (PTRACE_KILL, GET_LWP (lp->ptid), 0, 0);
  if (debug_lin_lwp)
    fprintf_unfiltered (gdb_stdlog,
   "KC:  PTRACE_KILL %s, 0, 0 (%s)\n",
   target_pid_to_str (lp->ptid),
   errno ? safe_strerror (errno) : "OK");

  return 0;
}
