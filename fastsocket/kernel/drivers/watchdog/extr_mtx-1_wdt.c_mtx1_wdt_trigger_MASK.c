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
typedef  int u32 ;
struct TYPE_2__ {int gpio; int /*<<< orphan*/  lock; int /*<<< orphan*/  stop; int /*<<< orphan*/  timer; scalar_t__ queue; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO2_DIR ; 
 scalar_t__ MTX1_WDT_INTERVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ mtx1_wdt_device ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void FUNC6(unsigned long unused)
{
	u32 tmp;

	FUNC4(&mtx1_wdt_device.lock);
	if (mtx1_wdt_device.running)
		ticks--;
	/*
	 * toggle GPIO2_15
	 */
	tmp = FUNC0(GPIO2_DIR);
	tmp = (tmp & ~(1 << mtx1_wdt_device.gpio)) |
	      ((~tmp) & (1 << mtx1_wdt_device.gpio));
	FUNC1(tmp, GPIO2_DIR);

	if (mtx1_wdt_device.queue && ticks)
		FUNC3(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
	else
		FUNC2(&mtx1_wdt_device.stop);
	FUNC5(&mtx1_wdt_device.lock);
}