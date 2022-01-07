
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_STOP_QUIETLY ;
 int PIDGET (int ) ;
 int SOLIB_ADD (char*,int,int *,int ) ;
 int STOP_QUIETLY_NO_SIGSTOP ;
 int attach_hook () ;
 int auto_solib_add ;
 int clear_proceed_status () ;
 int current_target ;
 int dont_repeat () ;
 int error (char*) ;
 int exec_file_attach (char*,int) ;
 scalar_t__ get_exec_file (int ) ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int normal_stop () ;
 scalar_t__ query (char*) ;
 int re_enable_breakpoints_in_shlibs () ;
 char* savestring (char*,int ) ;
 int source_full_path_of (char*,char**) ;
 int stop_soon ;
 int strlen (char*) ;
 int symbol_file_add_main (char*,int) ;
 int target_attach (char*,int) ;
 scalar_t__ target_has_execution ;
 int target_kill () ;
 char* target_pid_to_exec_file (int ) ;
 int target_post_attach (int ) ;
 int target_terminal_inferior () ;
 int target_terminal_init () ;
 int wait_for_inferior () ;

void
attach_command (char *args, int from_tty)
{
  char *exec_file;
  char *full_exec_path = ((void*)0);

  dont_repeat ();

  if (target_has_execution)
    {
      if (query ("A program is being debugged already.  Kill it? "))
 target_kill ();
      else
 error ("Not killed.");
    }

  target_attach (args, from_tty);



  target_terminal_init ();


  target_terminal_inferior ();



  init_wait_for_inferior ();
  clear_proceed_status ();
  stop_soon = STOP_QUIETLY_NO_SIGSTOP;
  wait_for_inferior ();
  stop_soon = NO_STOP_QUIETLY;






  exec_file = (char *) get_exec_file (0);
  if (!exec_file)
    {
      exec_file = target_pid_to_exec_file (PIDGET (inferior_ptid));
      if (exec_file)
 {
   if (!source_full_path_of (exec_file, &full_exec_path))
     full_exec_path = savestring (exec_file, strlen (exec_file));

   exec_file_attach (full_exec_path, from_tty);
   symbol_file_add_main (full_exec_path, from_tty);
 }
    }
  target_post_attach (PIDGET (inferior_ptid));

  normal_stop ();

  if (attach_hook)
    attach_hook ();
}
