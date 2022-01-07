
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int do_detach (int) ;
 int fflush (int ) ;
 char* get_exec_file (int ) ;
 int inferior_ptid ;
 int null_ptid ;
 int printf_filtered (char*,char*,int ) ;
 int procfs_ops ;
 int stdout ;
 int target_pid_to_str (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
procfs_detach (char *args, int from_tty)
{
  char *exec_file;
  int signo = 0;

  if (from_tty)
    {
      exec_file = get_exec_file (0);
      if (exec_file == 0)
 exec_file = "";
      printf_filtered ("Detaching from program: %s %s\n",
       exec_file, target_pid_to_str (inferior_ptid));
      fflush (stdout);
    }
  if (args)
    signo = atoi (args);

  do_detach (signo);
  inferior_ptid = null_ptid;
  unpush_target (&procfs_ops);
}
