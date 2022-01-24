#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct command_line {int /*<<< orphan*/ * body_list; scalar_t__ body_count; int /*<<< orphan*/  control_type; int /*<<< orphan*/ * line; int /*<<< orphan*/ * next; } ;
typedef  enum misc_command_type { ____Placeholder_misc_command_type } misc_command_type ;

/* Variables and functions */
 int /*<<< orphan*/  break_control ; 
 struct command_line* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  continue_control ; 
 int control_level ; 
 int else_command ; 
 int end_command ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  if_control ; 
 scalar_t__ instream ; 
 int nop_command ; 
 int ok_command ; 
 int /*<<< orphan*/ * readline_hook ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  simple_control ; 
 scalar_t__ stdin ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  while_control ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static enum misc_command_type
FUNC7 (struct command_line **command)
{
  char *p, *p1, *prompt_ptr, control_prompt[256];
  int i = 0;

  if (control_level >= 254)
    FUNC2 ("Control nesting too deep!\n");

  /* Set a prompt based on the nesting of the control commands.  */
  if (instream == stdin || (instream == 0 && readline_hook != NULL))
    {
      for (i = 0; i < control_level; i++)
	control_prompt[i] = ' ';
      control_prompt[i] = '>';
      control_prompt[i + 1] = '\0';
      prompt_ptr = (char *) &control_prompt[0];
    }
  else
    prompt_ptr = NULL;

  p = FUNC1 (prompt_ptr, instream == stdin, "commands");

  /* Not sure what to do here.  */
  if (p == NULL)
    return end_command;

  /* Strip leading and trailing whitespace.  */
  while (*p == ' ' || *p == '\t')
    p++;

  p1 = p + FUNC4 (p);
  while (p1 != p && (p1[-1] == ' ' || p1[-1] == '\t'))
    p1--;

  /* Blanks and comments don't really do anything, but we need to
     distinguish them from else, end and other commands which can be
     executed.  */
  if (p1 == p || p[0] == '#')
    return nop_command;

  /* Is this the end of a simple, while, or if control structure?  */
  if (p1 - p == 3 && !FUNC5 (p, "end", 3))
    return end_command;

  /* Is the else clause of an if control structure?  */
  if (p1 - p == 4 && !FUNC5 (p, "else", 4))
    return else_command;

  /* Check for while, if, break, continue, etc and build a new command
     line structure for them.  */
  if (p1 - p > 5 && !FUNC5 (p, "while", 5))
    *command = FUNC0 (while_control, p + 6);
  else if (p1 - p > 2 && !FUNC5 (p, "if", 2))
    *command = FUNC0 (if_control, p + 3);
  else if (p1 - p == 10 && !FUNC5 (p, "loop_break", 10))
    {
      *command = (struct command_line *)
	FUNC6 (sizeof (struct command_line));
      (*command)->next = NULL;
      (*command)->line = NULL;
      (*command)->control_type = break_control;
      (*command)->body_count = 0;
      (*command)->body_list = NULL;
    }
  else if (p1 - p == 13 && !FUNC5 (p, "loop_continue", 13))
    {
      *command = (struct command_line *)
	FUNC6 (sizeof (struct command_line));
      (*command)->next = NULL;
      (*command)->line = NULL;
      (*command)->control_type = continue_control;
      (*command)->body_count = 0;
      (*command)->body_list = NULL;
    }
  else
    {
      /* A normal command.  */
      *command = (struct command_line *)
	FUNC6 (sizeof (struct command_line));
      (*command)->next = NULL;
      (*command)->line = FUNC3 (p, p1 - p);
      (*command)->control_type = simple_control;
      (*command)->body_count = 0;
      (*command)->body_list = NULL;
    }

  /* Nothing special.  */
  return ok_command;
}