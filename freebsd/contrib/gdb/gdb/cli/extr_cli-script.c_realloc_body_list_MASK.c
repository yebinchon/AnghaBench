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
struct command_line {int body_count; struct command_line** body_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct command_line**,struct command_line**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct command_line**) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (struct command_line *command, int new_length)
{
  int n;
  struct command_line **body_list;

  n = command->body_count;

  /* Nothing to do?  */
  if (new_length <= n)
    return;

  body_list = (struct command_line **)
    FUNC2 (sizeof (struct command_line *) * new_length);

  FUNC0 (body_list, command->body_list, sizeof (struct command_line *) * n);

  FUNC1 (command->body_list);
  command->body_list = body_list;
  command->body_count = new_length;
}