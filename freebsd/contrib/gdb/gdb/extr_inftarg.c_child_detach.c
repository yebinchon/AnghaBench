
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int atoi (char*) ;
 int child_ops ;
 int detach (int) ;
 int error (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* get_exec_file (int ) ;
 int inferior_ptid ;
 int null_ptid ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,char*,int ) ;
 int target_pid_to_str (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
child_detach (char *args, int from_tty)
{
  error ("This version of Unix does not support detaching a process.");

}
