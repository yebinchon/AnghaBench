
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct command_line {int dummy; } ;
struct cmd_list_element {char* name; struct command_line* user_commands; } ;


 int fputs_filtered (char*,struct ui_file*) ;
 int print_command_lines (int ,struct command_line*,int) ;
 int uiout ;

void
show_user_1 (struct cmd_list_element *c, struct ui_file *stream)
{
  struct command_line *cmdlines;

  cmdlines = c->user_commands;
  if (!cmdlines)
    return;
  fputs_filtered ("User command ", stream);
  fputs_filtered (c->name, stream);
  fputs_filtered (":\n", stream);

  print_command_lines (uiout, cmdlines, 1);
  fputs_filtered ("\n", stream);
}
