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
struct TYPE_2__ {int flags; scalar_t__ stop; } ;

/* Variables and functions */
 int MO_SEND_BREAK_ON_STOP ; 
 TYPE_1__* current_monitor ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  monitor_desc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC0 ("MON stop\n");
  if ((current_monitor->flags & MO_SEND_BREAK_ON_STOP) != 0)
    FUNC2 (monitor_desc);
  if (current_monitor->stop)
    FUNC1 (current_monitor->stop);
}