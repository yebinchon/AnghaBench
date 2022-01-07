
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct command_line {struct command_line* next; } ;
struct cleanup {int dummy; } ;
typedef TYPE_1__* bpstat ;
struct TYPE_3__ {struct command_line* commands; struct TYPE_3__* next; } ;


 scalar_t__ breakpoint_proceeded ;
 int cleanup_executing_breakpoints ;
 int do_cleanups (struct cleanup*) ;
 int execute_control_command (struct command_line*) ;
 int executing_breakpoint_commands ;
 struct cleanup* make_cleanup (int ,int ) ;
 struct cleanup* make_cleanup_free_command_lines (struct command_line**) ;

void
bpstat_do_actions (bpstat *bsp)
{
  bpstat bs;
  struct cleanup *old_chain;



  if (executing_breakpoint_commands)
    return;

  executing_breakpoint_commands = 1;
  old_chain = make_cleanup (cleanup_executing_breakpoints, 0);

top:
  bs = *bsp;

  breakpoint_proceeded = 0;
  for (; bs != ((void*)0); bs = bs->next)
    {
      struct command_line *cmd;
      struct cleanup *this_cmd_tree_chain;
      cmd = bs->commands;
      bs->commands = 0;
      this_cmd_tree_chain = make_cleanup_free_command_lines (&cmd);

      while (cmd != ((void*)0))
 {
   execute_control_command (cmd);

   if (breakpoint_proceeded)
     break;
   else
     cmd = cmd->next;
 }


      do_cleanups (this_cmd_tree_chain);

      if (breakpoint_proceeded)




 goto top;
    }
  do_cleanups (old_chain);
}
