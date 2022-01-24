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
struct netdev_queue {int /*<<< orphan*/  qdisc; struct Qdisc* qdisc_sleeping; } ;
struct Qdisc {int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/ * FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct Qdisc *FUNC6(struct netdev_queue *dev_queue,
			      struct Qdisc *qdisc)
{
	struct Qdisc *oqdisc = dev_queue->qdisc_sleeping;
	spinlock_t *root_lock;

	root_lock = FUNC1(oqdisc);
	FUNC4(root_lock);

	/* Prune old scheduler */
	if (oqdisc && FUNC0(&oqdisc->refcnt) <= 1)
		FUNC2(oqdisc);

	/* ... and graft new one */
	if (qdisc == NULL)
		qdisc = &noop_qdisc;
	dev_queue->qdisc_sleeping = qdisc;
	FUNC3(dev_queue->qdisc, &noop_qdisc);

	FUNC5(root_lock);

	return oqdisc;
}