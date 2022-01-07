
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int PIDGET (int ) ;
 int * find_procinfo_or_die (int ,int ) ;
 int inferior_ptid ;
 int proc_iterate_over_threads (int *,int ,int *) ;
 int proc_update_threads (int *) ;
 int procfs_notice_thread ;

void
procfs_find_new_threads (void)
{
  procinfo *pi;


  pi = find_procinfo_or_die (PIDGET (inferior_ptid), 0);
  proc_update_threads (pi);
  proc_iterate_over_threads (pi, procfs_notice_thread, ((void*)0));
}
