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

/* Variables and functions */
 int /*<<< orphan*/  do_free_command_lines_cleanup ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,struct command_line**) ; 

struct cleanup *
FUNC1 (struct command_line **arg)
{
  return FUNC0 (do_free_command_lines_cleanup, arg);
}