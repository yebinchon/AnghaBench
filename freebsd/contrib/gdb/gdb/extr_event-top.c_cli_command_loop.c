
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PREFIX (int ) ;
 char* SUFFIX (int ) ;
 scalar_t__ async_command_editing_p ;
 int display_gdb_prompt (int ) ;
 char* get_prompt () ;
 int input_handler ;
 int rl_callback_handler_install (char*,int ) ;
 int start_event_loop () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

void
cli_command_loop (void)
{
  int length;
  char *a_prompt;
  char *gdb_prompt = get_prompt ();



  if (async_command_editing_p)
    {



      length = strlen (PREFIX (0)) + strlen (gdb_prompt) + strlen (SUFFIX (0)) + 1;
      a_prompt = (char *) xmalloc (length);
      strcpy (a_prompt, PREFIX (0));
      strcat (a_prompt, gdb_prompt);
      strcat (a_prompt, SUFFIX (0));
      rl_callback_handler_install (a_prompt, input_handler);
    }
  else
    display_gdb_prompt (0);


  start_event_loop ();
}
