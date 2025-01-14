
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_disable_stdin () ;
 int error (char*) ;
 scalar_t__ event_loop_p ;
 int strip_bg_char (char**) ;
 scalar_t__ target_can_async_p () ;
 int target_has_execution ;
 int until_break_command (char*,int,int ) ;
 int until_next_command (int) ;

__attribute__((used)) static void
until_command (char *arg, int from_tty)
{
  int async_exec = 0;

  if (!target_has_execution)
    error ("The program is not running.");


  if (arg != ((void*)0))
    async_exec = strip_bg_char (&arg);



  if (event_loop_p && async_exec && !target_can_async_p ())
    error ("Asynchronous execution not supported on this target.");



  if (event_loop_p && !async_exec && target_can_async_p ())
    {

      async_disable_stdin ();
    }

  if (arg)
    until_break_command (arg, from_tty, 0);
  else
    until_next_command (from_tty);
}
