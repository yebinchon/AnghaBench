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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 scalar_t__ monitor_debug_p ; 
 int /*<<< orphan*/  monitor_interrupt_twice ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (int signo)
{
  /* If this doesn't work, try more severe steps.  */
  FUNC1 (signo, monitor_interrupt_twice);

  if (monitor_debug_p || remote_debug)
    FUNC0 (gdb_stdlog, "monitor_interrupt called\n");

  FUNC2 ();
}