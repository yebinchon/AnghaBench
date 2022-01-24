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
struct minimal_symbol {int dummy; } ;
struct breakpoint {int /*<<< orphan*/  enable_state; int /*<<< orphan*/  addr_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  bp_disabled ; 
 int /*<<< orphan*/  bp_enabled ; 
 int /*<<< orphan*/  bp_overlay_event ; 
 struct breakpoint* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ overlay_debugging ; 
 int overlay_events_enabled ; 
 scalar_t__ ovly_auto ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *func_name)
{
  struct breakpoint *b;
  struct minimal_symbol *m;

  if ((m = FUNC2 (func_name, NULL)) == NULL)
    return;
 
  b = FUNC1 (FUNC0 (m), 
				  bp_overlay_event);
  b->addr_string = FUNC3 (func_name);

  if (overlay_debugging == ovly_auto)
    {
      b->enable_state = bp_enabled;
      overlay_events_enabled = 1;
    }
  else 
    {
      b->enable_state = bp_disabled;
      overlay_events_enabled = 0;
    }
}