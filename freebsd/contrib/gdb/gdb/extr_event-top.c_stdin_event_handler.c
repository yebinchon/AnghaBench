
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int call_readline (int ) ;
 int delete_file_handler (int ) ;
 int discard_all_continuations () ;
 int input_fd ;
 scalar_t__ instream ;
 int printf_unfiltered (char*) ;
 int quit_command (char*,int) ;
 scalar_t__ stdin ;
 int stub1 (int ) ;

void
stdin_event_handler (int error, gdb_client_data client_data)
{
  if (error)
    {
      printf_unfiltered ("error detected on stdin\n");
      delete_file_handler (input_fd);
      discard_all_continuations ();

      quit_command ((char *) 0, stdin == instream);
    }
  else
    (*call_readline) (client_data);
}
