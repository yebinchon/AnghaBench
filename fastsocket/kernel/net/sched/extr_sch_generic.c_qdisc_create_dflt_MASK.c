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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc_ops {scalar_t__ (* init ) (struct Qdisc*,int /*<<< orphan*/ *) ;} ;
struct Qdisc {unsigned int parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 struct Qdisc* FUNC1 (struct netdev_queue*,struct Qdisc_ops*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 scalar_t__ FUNC3 (struct Qdisc*,int /*<<< orphan*/ *) ; 

struct Qdisc * FUNC4(struct net_device *dev,
				 struct netdev_queue *dev_queue,
				 struct Qdisc_ops *ops,
				 unsigned int parentid)
{
	struct Qdisc *sch;

	sch = FUNC1(dev_queue, ops);
	if (FUNC0(sch))
		goto errout;
	sch->parent = parentid;

	if (!ops->init || ops->init(sch, NULL) == 0)
		return sch;

	FUNC2(sch);
errout:
	return NULL;
}