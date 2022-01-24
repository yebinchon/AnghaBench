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
struct net_device {int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/ * qdisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_watchdog ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/  (*) (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(struct net_device *dev)
{
	dev->qdisc = &noop_qdisc;
	FUNC1(dev, dev_init_scheduler_queue, &noop_qdisc);
	FUNC0(dev, &dev->rx_queue, &noop_qdisc);

	FUNC2(&dev->watchdog_timer, dev_watchdog, (unsigned long)dev);
}