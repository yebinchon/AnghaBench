
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int SignalKill (int ,int ,int ,int,int ,int ) ;
 int atoi (char*) ;
 scalar_t__ attach_flag ;
 int close (int) ;
 int ctl_fd ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* get_exec_file (int ) ;
 int inferior_ptid ;
 int init_thread_list () ;
 int nto_node () ;
 int null_ptid ;
 int printf_unfiltered (char*,char*,int ) ;
 int procfs_ops ;
 int target_pid_to_str (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
procfs_detach (char *args, int from_tty)
{
  int siggnal = 0;

  if (from_tty)
    {
      char *exec_file = get_exec_file (0);
      if (exec_file == 0)
 exec_file = "";
      printf_unfiltered ("Detaching from program: %s %s\n",
    exec_file, target_pid_to_str (inferior_ptid));
      gdb_flush (gdb_stdout);
    }
  if (args)
    siggnal = atoi (args);

  if (siggnal)
    SignalKill (nto_node(), PIDGET (inferior_ptid), 0, siggnal, 0, 0);

  close (ctl_fd);
  ctl_fd = -1;
  init_thread_list ();
  inferior_ptid = null_ptid;
  attach_flag = 0;
  unpush_target (&procfs_ops);
}
