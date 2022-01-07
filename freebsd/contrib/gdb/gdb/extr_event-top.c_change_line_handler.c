
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ async_command_editing_p ;
 int call_readline ;
 int command_line_handler ;
 int gdb_readline2 ;
 int input_handler ;
 int rl_callback_handler_remove () ;
 int rl_callback_read_char_wrapper ;

__attribute__((used)) static void
change_line_handler (void)
{






  if (async_command_editing_p)
    {

      call_readline = rl_callback_read_char_wrapper;
      input_handler = command_line_handler;
    }
  else
    {

      rl_callback_handler_remove ();
      call_readline = gdb_readline2;



      input_handler = command_line_handler;
    }
}
