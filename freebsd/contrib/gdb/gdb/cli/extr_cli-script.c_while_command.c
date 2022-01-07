
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int dummy; } ;


 int control_level ;
 int execute_control_command (struct command_line*) ;
 int free_command_lines (struct command_line**) ;
 struct command_line* get_command_line (int ,char*) ;
 int while_control ;

void
while_command (char *arg, int from_tty)
{
  struct command_line *command = ((void*)0);

  control_level = 1;
  command = get_command_line (while_control, arg);

  if (command == ((void*)0))
    return;

  execute_control_command (command);
  free_command_lines (&command);
}
