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
struct tcmsg {int /*<<< orphan*/  tcm_parent; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC1 (struct Qdisc*,unsigned int) ; 
 struct netdev_queue* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static struct netdev_queue *FUNC4(struct Qdisc *sch,
					    struct tcmsg *tcm)
{
	unsigned int ntx = FUNC0(tcm->tcm_parent);
	struct netdev_queue *dev_queue = FUNC1(sch, ntx);

	if (!dev_queue) {
		struct net_device *dev = FUNC3(sch);

		return FUNC2(dev, 0);
	}
	return dev_queue;
}