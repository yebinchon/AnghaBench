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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {unsigned int num_tx_queues; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static unsigned long FUNC3(struct Qdisc *sch, u32 classid)
{
	struct net_device *dev = FUNC2(sch);
	unsigned int ntx = FUNC0(classid);

	if (ntx > dev->num_tx_queues + FUNC1(dev))
		return 0;
	return ntx;
}