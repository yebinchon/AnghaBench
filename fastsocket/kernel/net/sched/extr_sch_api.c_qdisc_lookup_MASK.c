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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  qdisc_sleeping; } ;
struct net_device {TYPE_1__ rx_queue; int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct Qdisc *FUNC1(struct net_device *dev, u32 handle)
{
	struct Qdisc *q;

	q = FUNC0(dev->qdisc, handle);
	if (q)
		goto out;

	q = FUNC0(dev->rx_queue.qdisc_sleeping, handle);
out:
	return q;
}