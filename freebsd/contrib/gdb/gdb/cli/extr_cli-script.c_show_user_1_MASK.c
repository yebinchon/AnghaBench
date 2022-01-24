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
struct ui_file {int dummy; } ;
struct command_line {int dummy; } ;
struct cmd_list_element {char* name; struct command_line* user_commands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct command_line*,int) ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC2 (struct cmd_list_element *c, struct ui_file *stream)
{
  struct command_line *cmdlines;

  cmdlines = c->user_commands;
  if (!cmdlines)
    return;
  FUNC0 ("User command ", stream);
  FUNC0 (c->name, stream);
  FUNC0 (":\n", stream);

  FUNC1 (uiout, cmdlines, 1);
  FUNC0 ("\n", stream);
}