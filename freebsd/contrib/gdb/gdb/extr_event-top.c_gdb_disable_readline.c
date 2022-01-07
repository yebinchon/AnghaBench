
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_file_handler (int ) ;
 scalar_t__ event_loop_p ;
 int gdb_stderr ;
 int * gdb_stdlog ;
 int gdb_stdout ;
 int * gdb_stdtarg ;
 int input_fd ;
 int rl_callback_handler_remove () ;
 int ui_file_delete (int ) ;

void
gdb_disable_readline (void)
{
  if (event_loop_p)
    {
      rl_callback_handler_remove ();
      delete_file_handler (input_fd);
    }
}
