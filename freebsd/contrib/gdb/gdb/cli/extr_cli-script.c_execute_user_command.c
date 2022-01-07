
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {struct command_line* next; } ;
struct cmd_list_element {struct command_line* user_commands; } ;
struct cleanup {int dummy; } ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;
typedef int FILE ;


 int break_control ;
 int do_cleanups (struct cleanup*) ;
 int do_restore_instream_cleanup ;
 int do_restore_user_call_depth ;
 int error (char*) ;
 int execute_control_command (struct command_line*) ;
 int* instream ;
 struct cleanup* make_cleanup (int ,int*) ;
 struct cleanup* setup_user_args (char*) ;
 int simple_control ;
 int warning (char*) ;

void
execute_user_command (struct cmd_list_element *c, char *args)
{
  struct command_line *cmdlines;
  struct cleanup *old_chain;
  enum command_control_type ret;
  static int user_call_depth = 0;
  extern int max_user_call_depth;

  old_chain = setup_user_args (args);

  cmdlines = c->user_commands;
  if (cmdlines == 0)

    return;

  if (++user_call_depth > max_user_call_depth)
    error ("Max user call depth exceeded -- command aborted\n");

  old_chain = make_cleanup (do_restore_user_call_depth, &user_call_depth);



  old_chain = make_cleanup (do_restore_instream_cleanup, instream);
  instream = (FILE *) 0;
  while (cmdlines)
    {
      ret = execute_control_command (cmdlines);
      if (ret != simple_control && ret != break_control)
 {
   warning ("Error in control structure.\n");
   break;
 }
      cmdlines = cmdlines->next;
    }
  do_cleanups (old_chain);

  user_call_depth--;
}
