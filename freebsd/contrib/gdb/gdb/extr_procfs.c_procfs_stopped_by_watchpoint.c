
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int procinfo ;


 scalar_t__ FLTKWATCH ;
 scalar_t__ FLTWATCH ;
 int PIDGET (int ) ;
 scalar_t__ PR_FAULTED ;
 int PR_ISTOP ;
 int PR_STOPPED ;
 int * find_procinfo_or_die (int,int ) ;
 int inferior_ptid ;
 int proc_flags (int *) ;
 scalar_t__ proc_what (int *) ;
 scalar_t__ proc_why (int *) ;

int
procfs_stopped_by_watchpoint (ptid_t ptid)
{
  procinfo *pi;

  pi = find_procinfo_or_die (PIDGET (ptid) == -1 ?
        PIDGET (inferior_ptid) : PIDGET (ptid), 0);

  if (!pi)
    return 0;

  if (proc_flags (pi) & (PR_STOPPED | PR_ISTOP))
    {
      if (proc_why (pi) == PR_FAULTED)
 {
 }
    }
  return 0;
}
