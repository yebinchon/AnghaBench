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
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/ * qdisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/  (*) (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev)
{
	int need_watchdog;

	/* No queueing discipline is attached to device;
	   create default one i.e. pfifo_fast for devices,
	   which need queueing and noqueue_qdisc for
	   virtual interfaces
	 */

	if (dev->qdisc == &noop_qdisc)
		FUNC0(dev);

	if (!FUNC3(dev))
		/* Delay activation until next carrier-on event */
		return;

	need_watchdog = 0;
	FUNC2(dev, transition_one_qdisc, &need_watchdog);
	FUNC4(dev, &dev->rx_queue, NULL);

	if (need_watchdog) {
		dev->trans_start = jiffies;
		FUNC1(dev);
	}
}