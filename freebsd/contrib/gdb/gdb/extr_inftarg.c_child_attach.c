
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attach (int) ;
 int child_ops ;
 int error (char*,...) ;
 int error_no_arg (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ get_exec_file (int ) ;
 int getpid () ;
 int inferior_ptid ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,char*,...) ;
 int push_target (int *) ;
 int strtol (char*,char**,int ) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
child_attach (char *args, int from_tty)
{
  if (!args)
    error_no_arg ("process-id to attach");


  error ("Can't attach to a process on this machine.");
}
