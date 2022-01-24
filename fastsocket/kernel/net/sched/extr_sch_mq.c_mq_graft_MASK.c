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
struct net_device {int flags; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct Qdisc* FUNC2 (struct netdev_queue*,struct Qdisc*) ; 
 struct netdev_queue* FUNC3 (struct Qdisc*,unsigned long) ; 
 struct net_device* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, unsigned long cl, struct Qdisc *new,
		    struct Qdisc **old)
{
	struct netdev_queue *dev_queue = FUNC3(sch, cl);
	struct net_device *dev = FUNC4(sch);

	if (dev->flags & IFF_UP)
		FUNC1(dev);

	*old = FUNC2(dev_queue, new);

	if (dev->flags & IFF_UP)
		FUNC0(dev);
	return 0;
}