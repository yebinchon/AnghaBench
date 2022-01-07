
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int PIDGET (int ) ;
 int destroy_procinfo (int *) ;
 int * find_procinfo (int ,int ) ;
 int generic_mourn_inferior () ;
 int inferior_ptid ;
 int null_ptid ;
 int procfs_ops ;
 int ptid_equal (int ,int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
procfs_mourn_inferior (void)
{
  procinfo *pi;

  if (!ptid_equal (inferior_ptid, null_ptid))
    {

      pi = find_procinfo (PIDGET (inferior_ptid), 0);
      if (pi)
 destroy_procinfo (pi);
    }
  unpush_target (&procfs_ops);
  generic_mourn_inferior ();
}
