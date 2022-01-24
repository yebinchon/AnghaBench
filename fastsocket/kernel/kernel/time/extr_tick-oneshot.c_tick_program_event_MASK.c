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
struct clock_event_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 

int FUNC2(ktime_t expires, int force)
{
	struct clock_event_device *dev = FUNC0(tick_cpu_device).evtdev;

	return FUNC1(dev, expires, force);
}