
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int PIDGET (int ) ;
 int SOLIB_CREATE_INFERIOR_HOOK (int ) ;
 int SOLIB_RESTART () ;
 int error (char*) ;
 int exec_file_attach (char*,int ) ;
 struct target_ops* find_run_target () ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int inferior_ptid ;
 int insert_breakpoints () ;
 int may_follow_exec ;
 int pid_to_ptid (int) ;
 int printf_unfiltered (char*,char*) ;
 int push_target (struct target_ops*) ;
 scalar_t__ step_range_end ;
 scalar_t__ step_range_start ;
 int * step_resume_breakpoint ;
 int symbol_file_add_main (char*,int ) ;
 int target_mourn_inferior () ;
 int * through_sigtramp_breakpoint ;
 int update_breakpoints_after_exec () ;

__attribute__((used)) static void
follow_exec (int pid, char *execd_pathname)
{
  int saved_pid = pid;
  struct target_ops *tgt;

  if (!may_follow_exec)
    return;
  update_breakpoints_after_exec ();



  step_resume_breakpoint = ((void*)0);
  step_range_start = 0;
  step_range_end = 0;


  through_sigtramp_breakpoint = ((void*)0);


  printf_unfiltered ("Executing new program: %s\n", execd_pathname);





  tgt = find_run_target ();

  if (tgt == ((void*)0))
    error ("Could find run target to save before following exec");

  gdb_flush (gdb_stdout);
  target_mourn_inferior ();
  inferior_ptid = pid_to_ptid (saved_pid);

  push_target (tgt);


  exec_file_attach (execd_pathname, 0);


  symbol_file_add_main (execd_pathname, 0);
  insert_breakpoints ();





}
