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
struct net_device {unsigned long trans_start; unsigned int num_tx_queues; } ;
struct TYPE_2__ {unsigned long trans_start; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

unsigned long FUNC2(struct net_device *dev)
{
	unsigned long val, res = dev->trans_start;
	unsigned int i;

	for (i = 0; i < dev->num_tx_queues; i++) {
		val = FUNC0(dev, i)->trans_start;
		if (val && FUNC1(val, res))
			res = val;
	}
	dev->trans_start = res;
	return res;
}