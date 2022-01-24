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
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct Qdisc {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  __QDISC_STATE_RUNNING ; 
 int /*<<< orphan*/  __QDISC_STATE_SCHED ; 
 struct netdev_queue* FUNC0 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct net_device *dev)
{
	unsigned int i;

	for (i = 0; i < dev->num_tx_queues; i++) {
		struct netdev_queue *dev_queue;
		spinlock_t *root_lock;
		struct Qdisc *q;
		int val;

		dev_queue = FUNC0(dev, i);
		q = dev_queue->qdisc_sleeping;
		root_lock = FUNC1(q);

		FUNC2(root_lock);

		val = (FUNC4(__QDISC_STATE_RUNNING, &q->state) ||
		       FUNC4(__QDISC_STATE_SCHED, &q->state));

		FUNC3(root_lock);

		if (val)
			return true;
	}
	return false;
}