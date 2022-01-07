
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLIB_RESTART () ;
 int async_disable_stdin () ;
 int clear_breakpoint_hit_counts () ;
 int do_run_cleanups (int *) ;
 int dont_repeat () ;
 int environ_vector (int ) ;
 int error (char*) ;
 scalar_t__ event_loop_p ;
 scalar_t__ get_exec_file (int ) ;
 char* get_inferior_args () ;
 int inferior_environ ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int null_ptid ;
 int objfile_purge_solibs () ;
 int ptid_equal (int ,int ) ;
 int query (char*) ;
 int reopen_exec_file () ;
 int reread_symbols () ;
 char* set_inferior_args (int ) ;
 int strip_bg_char (char**) ;
 scalar_t__ target_can_async_p () ;
 int target_create_inferior (char*,char*,int ) ;
 scalar_t__ target_has_execution ;
 int target_kill () ;
 int ui_out_field_string (int ,char*,char*) ;
 int ui_out_flush (int ) ;
 int ui_out_spaces (int ,int) ;
 int ui_out_text (int ,char*) ;
 int uiout ;
 int xfree (char*) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
run_command (char *args, int from_tty)
{
  char *exec_file;

  dont_repeat ();

  if (! ptid_equal (inferior_ptid, null_ptid) && target_has_execution)
    {
      if (from_tty
   && !query ("The program being debugged has been started already.\nStart it from the beginning? "))

 error ("Program not restarted.");
      target_kill ();



      init_wait_for_inferior ();
    }

  clear_breakpoint_hit_counts ();


  objfile_purge_solibs ();

  do_run_cleanups (((void*)0));
  reopen_exec_file ();
  reread_symbols ();

  exec_file = (char *) get_exec_file (0);
  if (!args)
    {
      if (event_loop_p && target_can_async_p ())
 async_disable_stdin ();
    }
  else
    {
      int async_exec = strip_bg_char (&args);



      if (event_loop_p && async_exec && !target_can_async_p ())
 error ("Asynchronous execution not supported on this target.");



      if (event_loop_p && !async_exec && target_can_async_p ())
 {

   async_disable_stdin ();
 }


      if (args)
 {
          char *old_args = set_inferior_args (xstrdup (args));
          xfree (old_args);
 }
    }

  if (from_tty)
    {
      ui_out_field_string (uiout, ((void*)0), "Starting program");
      ui_out_text (uiout, ": ");
      if (exec_file)
 ui_out_field_string (uiout, "execfile", exec_file);
      ui_out_spaces (uiout, 1);


      ui_out_field_string (uiout, "infargs", get_inferior_args ());
      ui_out_text (uiout, "\n");
      ui_out_flush (uiout);
    }



  target_create_inferior (exec_file, get_inferior_args (),
     environ_vector (inferior_environ));
}
