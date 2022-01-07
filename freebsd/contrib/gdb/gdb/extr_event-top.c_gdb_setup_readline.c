
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISATTY (int ) ;
 int add_file_handler (int ,int ,int ) ;
 int async_command_editing_p ;
 int call_readline ;
 int command_line_handler ;
 scalar_t__ event_loop_p ;
 int fileno (int ) ;
 int gdb_readline2 ;
 void* gdb_stderr ;
 void* gdb_stdlog ;
 void* gdb_stdout ;
 void* gdb_stdtarg ;
 int input_fd ;
 int input_handler ;
 int instream ;
 int rl_callback_read_char_wrapper ;
 int rl_instream ;
 int stderr ;
 int stdin_event_handler ;
 void* stdio_fileopen (int ) ;
 int stdout ;

void
gdb_setup_readline (void)
{




  if (event_loop_p)
    {
      gdb_stdout = stdio_fileopen (stdout);
      gdb_stderr = stdio_fileopen (stderr);
      gdb_stdlog = gdb_stderr;
      gdb_stdtarg = gdb_stderr;



      if (ISATTY (instream))
 {



   async_command_editing_p = 1;




   call_readline = rl_callback_read_char_wrapper;
 }
      else
 {
   async_command_editing_p = 0;
   call_readline = gdb_readline2;
 }




      input_handler = command_line_handler;


      rl_instream = instream;



      input_fd = fileno (instream);
      add_file_handler (input_fd, stdin_event_handler, 0);
    }
}
