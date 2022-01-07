
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int body_count; struct command_line** body_list; int control_type; int line; struct command_line* next; } ;


 scalar_t__ xmalloc (int) ;
 int xstrdup (int ) ;

struct command_line *
copy_command_lines (struct command_line *cmds)
{
  struct command_line *result = ((void*)0);

  if (cmds)
    {
      result = (struct command_line *) xmalloc (sizeof (struct command_line));

      result->next = copy_command_lines (cmds->next);
      result->line = xstrdup (cmds->line);
      result->control_type = cmds->control_type;
      result->body_count = cmds->body_count;
      if (cmds->body_count > 0)
        {
          int i;

          result->body_list = (struct command_line **)
            xmalloc (sizeof (struct command_line *) * cmds->body_count);

          for (i = 0; i < cmds->body_count; i++)
            result->body_list[i] = copy_command_lines (cmds->body_list[i]);
        }
      else
        result->body_list = ((void*)0);
    }

  return result;
}
