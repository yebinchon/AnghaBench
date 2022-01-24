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
struct net_device {unsigned long num_tx_queues; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct net_device*) ; 
 struct netdev_queue* FUNC1 (struct net_device*,unsigned long) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static struct netdev_queue *FUNC3(struct Qdisc *sch,
					     unsigned long cl)
{
	struct net_device *dev = FUNC2(sch);
	unsigned long ntx = cl - 1 - FUNC0(dev);

	if (ntx >= dev->num_tx_queues)
		return NULL;
	return FUNC1(dev, ntx);
}