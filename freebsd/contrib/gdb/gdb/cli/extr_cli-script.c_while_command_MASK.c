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

/* Variables and functions */
 int control_level ; 
 int /*<<< orphan*/  FUNC0 (struct command_line*) ; 
 int /*<<< orphan*/  FUNC1 (struct command_line**) ; 
 struct command_line* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  while_control ; 

void
FUNC3 (char *arg, int from_tty)
{
  struct command_line *command = NULL;

  control_level = 1;
  command = FUNC2 (while_control, arg);

  if (command == NULL)
    return;

  FUNC0 (command);
  FUNC1 (&command);
}