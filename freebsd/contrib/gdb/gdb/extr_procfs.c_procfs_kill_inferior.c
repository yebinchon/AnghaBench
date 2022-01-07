
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int PIDGET (int ) ;
 int * find_procinfo (int ,int ) ;
 int inferior_ptid ;
 int null_ptid ;
 int ptid_equal (int ,int ) ;
 int target_mourn_inferior () ;
 int unconditionally_kill_inferior (int *) ;

__attribute__((used)) static void
procfs_kill_inferior (void)
{
  if (!ptid_equal (inferior_ptid, null_ptid))
    {

      procinfo *pi = find_procinfo (PIDGET (inferior_ptid), 0);

      if (pi)
 unconditionally_kill_inferior (pi);
      target_mourn_inferior ();
    }
}
