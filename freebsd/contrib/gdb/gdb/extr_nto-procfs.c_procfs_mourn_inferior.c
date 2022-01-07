
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int SIGKILL ;
 int SignalKill (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ attach_flag ;
 int close (int ) ;
 int ctl_fd ;
 int generic_mourn_inferior () ;
 int inferior_ptid ;
 int init_thread_list () ;
 int nto_node () ;
 int null_ptid ;
 int procfs_ops ;
 int ptid_equal (int ,int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
procfs_mourn_inferior (void)
{
  if (!ptid_equal (inferior_ptid, null_ptid))
    {
      SignalKill (nto_node(), PIDGET (inferior_ptid), 0, SIGKILL, 0, 0);
      close (ctl_fd);
    }
  inferior_ptid = null_ptid;
  init_thread_list ();
  unpush_target (&procfs_ops);
  generic_mourn_inferior ();
  attach_flag = 0;
}
