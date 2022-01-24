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
struct cmd_list_element {int hook_in; scalar_t__ hook_pre; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  clear_hook_in_cleanup ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,struct cmd_list_element*) ; 

void
FUNC3 (struct cmd_list_element *c)
{
  if ((c->hook_pre) && (!c->hook_in))
    {
      struct cleanup *cleanups = FUNC2 (clear_hook_in_cleanup, c);
      c->hook_in = 1; /* Prevent recursive hooking */
      FUNC1 (c->hook_pre, (char *) 0);
      FUNC0 (cleanups);
    }
}