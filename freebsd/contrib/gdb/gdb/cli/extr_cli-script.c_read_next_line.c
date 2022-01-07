
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int * body_list; scalar_t__ body_count; int control_type; int * line; int * next; } ;
typedef enum misc_command_type { ____Placeholder_misc_command_type } misc_command_type ;


 int break_control ;
 struct command_line* build_command_line (int ,char*) ;
 char* command_line_input (char*,int,char*) ;
 int continue_control ;
 int control_level ;
 int else_command ;
 int end_command ;
 int error (char*) ;
 int if_control ;
 scalar_t__ instream ;
 int nop_command ;
 int ok_command ;
 int * readline_hook ;
 int * savestring (char*,int) ;
 int simple_control ;
 scalar_t__ stdin ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int while_control ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static enum misc_command_type
read_next_line (struct command_line **command)
{
  char *p, *p1, *prompt_ptr, control_prompt[256];
  int i = 0;

  if (control_level >= 254)
    error ("Control nesting too deep!\n");


  if (instream == stdin || (instream == 0 && readline_hook != ((void*)0)))
    {
      for (i = 0; i < control_level; i++)
 control_prompt[i] = ' ';
      control_prompt[i] = '>';
      control_prompt[i + 1] = '\0';
      prompt_ptr = (char *) &control_prompt[0];
    }
  else
    prompt_ptr = ((void*)0);

  p = command_line_input (prompt_ptr, instream == stdin, "commands");


  if (p == ((void*)0))
    return end_command;


  while (*p == ' ' || *p == '\t')
    p++;

  p1 = p + strlen (p);
  while (p1 != p && (p1[-1] == ' ' || p1[-1] == '\t'))
    p1--;




  if (p1 == p || p[0] == '#')
    return nop_command;


  if (p1 - p == 3 && !strncmp (p, "end", 3))
    return end_command;


  if (p1 - p == 4 && !strncmp (p, "else", 4))
    return else_command;



  if (p1 - p > 5 && !strncmp (p, "while", 5))
    *command = build_command_line (while_control, p + 6);
  else if (p1 - p > 2 && !strncmp (p, "if", 2))
    *command = build_command_line (if_control, p + 3);
  else if (p1 - p == 10 && !strncmp (p, "loop_break", 10))
    {
      *command = (struct command_line *)
 xmalloc (sizeof (struct command_line));
      (*command)->next = ((void*)0);
      (*command)->line = ((void*)0);
      (*command)->control_type = break_control;
      (*command)->body_count = 0;
      (*command)->body_list = ((void*)0);
    }
  else if (p1 - p == 13 && !strncmp (p, "loop_continue", 13))
    {
      *command = (struct command_line *)
 xmalloc (sizeof (struct command_line));
      (*command)->next = ((void*)0);
      (*command)->line = ((void*)0);
      (*command)->control_type = continue_control;
      (*command)->body_count = 0;
      (*command)->body_list = ((void*)0);
    }
  else
    {

      *command = (struct command_line *)
 xmalloc (sizeof (struct command_line));
      (*command)->next = ((void*)0);
      (*command)->line = savestring (p, p1 - p);
      (*command)->control_type = simple_control;
      (*command)->body_count = 0;
      (*command)->body_list = ((void*)0);
    }


  return ok_command;
}
