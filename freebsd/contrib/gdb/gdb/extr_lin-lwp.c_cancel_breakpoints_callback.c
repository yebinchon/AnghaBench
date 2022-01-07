
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {scalar_t__ status; int ptid; } ;


 scalar_t__ DECR_PC_AFTER_BREAK ;
 scalar_t__ SIGTRAP ;
 scalar_t__ WIFSTOPPED (scalar_t__) ;
 scalar_t__ WSTOPSIG (scalar_t__) ;
 scalar_t__ breakpoint_inserted_here_p (scalar_t__) ;
 scalar_t__ debug_lin_lwp ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stdlog ;
 scalar_t__ read_pc_pid (int ) ;
 int target_pid_to_str (int ) ;
 int write_pc_pid (scalar_t__,int ) ;

__attribute__((used)) static int
cancel_breakpoints_callback (struct lwp_info *lp, void *data)
{
  struct lwp_info *event_lp = data;


  if (lp == event_lp)
    return 0;
  if (lp->status != 0
      && WIFSTOPPED (lp->status) && WSTOPSIG (lp->status) == SIGTRAP
      && breakpoint_inserted_here_p (read_pc_pid (lp->ptid) -
         DECR_PC_AFTER_BREAK))
    {
      if (debug_lin_lwp)
 fprintf_unfiltered (gdb_stdlog,
       "CBC: Push back breakpoint for %s\n",
       target_pid_to_str (lp->ptid));


      if (DECR_PC_AFTER_BREAK)
 write_pc_pid (read_pc_pid (lp->ptid) - DECR_PC_AFTER_BREAK, lp->ptid);


      lp->status = 0;
    }

  return 0;
}
