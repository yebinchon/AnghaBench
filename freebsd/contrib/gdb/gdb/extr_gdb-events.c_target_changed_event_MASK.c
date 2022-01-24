#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* target_changed ) () ;} ;

/* Variables and functions */
 TYPE_1__* current_event_hooks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ gdb_events_debug ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2 (void)
{
  if (gdb_events_debug)
    FUNC0 (gdb_stdlog, "target_changed_event\n");
  if (!current_event_hooks->target_changed)
    return;
  current_event_hooks->target_changed ();
}