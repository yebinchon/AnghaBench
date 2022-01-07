
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int control_type; int body_count; int line; struct command_line** body_list; int * next; } ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;


 int error (char*) ;
 int memset (struct command_line**,int ,int) ;
 int savestring (char*,int ) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct command_line *
build_command_line (enum command_control_type type, char *args)
{
  struct command_line *cmd;

  if (args == ((void*)0))
    error ("if/while commands require arguments.\n");

  cmd = (struct command_line *) xmalloc (sizeof (struct command_line));
  cmd->next = ((void*)0);
  cmd->control_type = type;

  cmd->body_count = 1;
  cmd->body_list
    = (struct command_line **) xmalloc (sizeof (struct command_line *)
     * cmd->body_count);
  memset (cmd->body_list, 0, sizeof (struct command_line *) * cmd->body_count);
  cmd->line = savestring (args, strlen (args));
  return cmd;
}
