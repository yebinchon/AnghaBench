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
struct TYPE_2__ {int /*<<< orphan*/  (* tracepoint_delete ) (int) ;} ;

/* Variables and functions */
 TYPE_1__* current_event_hooks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ gdb_events_debug ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (int number)
{
  if (gdb_events_debug)
    FUNC0 (gdb_stdlog, "tracepoint_delete_event\n");
  if (!current_event_hooks->tracepoint_delete)
    return;
  current_event_hooks->tracepoint_delete (number);
}