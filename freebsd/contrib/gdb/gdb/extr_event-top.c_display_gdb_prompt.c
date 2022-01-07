
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PREFIX (int ) ;
 char* SUFFIX (int ) ;
 scalar_t__ alloca (int) ;
 scalar_t__ async_command_editing_p ;
 int current_interp_display_prompt_p () ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* get_prompt () ;
 int input_handler ;
 int rl_callback_handler_install (char*,int ) ;
 int rl_callback_handler_remove () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ sync_execution ;
 scalar_t__ target_executing ;

void
display_gdb_prompt (char *new_prompt)
{
  int prompt_length = 0;
  char *gdb_prompt = get_prompt ();



  if (!current_interp_display_prompt_p ())
    return;

  if (target_executing && sync_execution)
    {
      rl_callback_handler_remove ();
      return;
    }

  if (!new_prompt)
    {

      prompt_length = strlen (PREFIX (0)) +
 strlen (SUFFIX (0)) +
 strlen (gdb_prompt) + 1;

      new_prompt = (char *) alloca (prompt_length);


      strcpy (new_prompt, PREFIX (0));
      strcat (new_prompt, gdb_prompt);


      strcat (new_prompt, SUFFIX (0));
    }

  if (async_command_editing_p)
    {
      rl_callback_handler_remove ();
      rl_callback_handler_install (new_prompt, input_handler);
    }

  else if (new_prompt)
    {



      fputs_unfiltered (new_prompt, gdb_stdout);
      gdb_flush (gdb_stdout);
    }
}
