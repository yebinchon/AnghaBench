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
struct command_line {scalar_t__ control_type; struct command_line* next; } ;
struct cleanup {int dummy; } ;
typedef  enum misc_command_type { ____Placeholder_misc_command_type } misc_command_type ;
typedef  enum command_control_type { ____Placeholder_command_control_type } command_control_type ;

/* Variables and functions */
 int /*<<< orphan*/  END_MESSAGE ; 
 scalar_t__ control_level ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int end_command ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ if_control ; 
 scalar_t__ FUNC4 () ; 
 int invalid_control ; 
 struct cleanup* FUNC5 (struct command_line**) ; 
 int nop_command ; 
 int ok_command ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct command_line**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct command_line*) ; 
 int simple_control ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ while_control ; 

struct command_line *
FUNC13 (char *prompt_arg, int from_tty)
{
  struct command_line *head, *tail, *next;
  struct cleanup *old_chain;
  enum command_control_type ret;
  enum misc_command_type val;

  control_level = 0;
  if (&readline_begin_hook)
    {
      /* Note - intentional to merge messages with no newline */
      FUNC8) ("%s  %s\n", prompt_arg, END_MESSAGE);
    }
  else if (from_tty && FUNC4 ())
    {
      FUNC6 ("%s\n%s\n", prompt_arg, END_MESSAGE);
      FUNC3 (gdb_stdout);
    }

  head = tail = NULL;
  old_chain = NULL;

  while (1)
    {
      val = FUNC7 (&next);

      /* Ignore blank lines or comments.  */
      if (val == nop_command)
	continue;

      if (val == end_command)
	{
	  ret = simple_control;
	  break;
	}

      if (val != ok_command)
	{
	  ret = invalid_control;
	  break;
	}

      if (next->control_type == while_control
	  || next->control_type == if_control)
	{
	  control_level++;
	  ret = FUNC10 (next);
	  control_level--;

	  if (ret == invalid_control)
	    break;
	}

      if (tail)
	{
	  tail->next = next;
	}
      else
	{
	  head = next;
	  old_chain = FUNC5 (&head);
	}
      tail = next;
    }

  FUNC2 ();

  if (head)
    {
      if (ret != invalid_control)
	{
	  FUNC0 (old_chain);
	}
      else
	FUNC1 (old_chain);
    }

  if (&readline_end_hook)
    {
      FUNC9) ();
    }
  return (head);
}