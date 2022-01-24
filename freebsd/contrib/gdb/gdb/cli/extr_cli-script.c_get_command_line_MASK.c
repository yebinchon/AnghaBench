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
struct command_line {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum command_control_type { ____Placeholder_command_control_type } command_control_type ;

/* Variables and functions */
 struct command_line* FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 scalar_t__ invalid_control ; 
 struct cleanup* FUNC3 (struct command_line**) ; 
 scalar_t__ FUNC4 (struct command_line*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct command_line *
FUNC6 (enum command_control_type type, char *arg)
{
  struct command_line *cmd;
  struct cleanup *old_chain = NULL;

  /* Allocate and build a new command line structure.  */
  cmd = FUNC0 (type, arg);

  old_chain = FUNC3 (&cmd);

  /* Read in the body of this command.  */
  if (FUNC4 (cmd) == invalid_control)
    {
      FUNC5 ("error reading in control structure\n");
      FUNC2 (old_chain);
      return NULL;
    }

  FUNC1 (old_chain);
  return cmd;
}