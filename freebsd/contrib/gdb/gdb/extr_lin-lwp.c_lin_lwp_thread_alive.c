
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int GET_LWP (int ) ;
 int PTRACE_PEEKUSER ;
 scalar_t__ debug_lin_lwp ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int is_lwp (int ) ;
 int ptrace (int ,int ,int ,int ) ;
 char* safe_strerror (scalar_t__) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static int
lin_lwp_thread_alive (ptid_t ptid)
{
  gdb_assert (is_lwp (ptid));

  errno = 0;
  ptrace (PTRACE_PEEKUSER, GET_LWP (ptid), 0, 0);
  if (debug_lin_lwp)
    fprintf_unfiltered (gdb_stdlog,
   "LLTA: PTRACE_PEEKUSER %s, 0, 0 (%s)\n",
   target_pid_to_str (ptid),
   errno ? safe_strerror (errno) : "OK");
  if (errno)
    return 0;

  return 1;
}
