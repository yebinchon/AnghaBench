
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int do_attach (int ) ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int fflush (int ) ;
 char* get_exec_file (int ) ;
 int getpid () ;
 int inferior_ptid ;
 int pid_to_ptid (int) ;
 int printf_filtered (char*,char*,...) ;
 int procfs_ops ;
 int push_target (int *) ;
 int stdout ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
procfs_attach (char *args, int from_tty)
{
  char *exec_file;
  int pid;

  if (!args)
    error_no_arg ("process-id to attach");

  pid = atoi (args);
  if (pid == getpid ())
    error ("Attaching GDB to itself is not a good idea...");

  if (from_tty)
    {
      exec_file = get_exec_file (0);

      if (exec_file)
 printf_filtered ("Attaching to program `%s', %s\n",
    exec_file, target_pid_to_str (pid_to_ptid (pid)));
      else
 printf_filtered ("Attaching to %s\n",
                  target_pid_to_str (pid_to_ptid (pid)));

      fflush (stdout);
    }
  inferior_ptid = do_attach (pid_to_ptid (pid));
  push_target (&procfs_ops);
}
