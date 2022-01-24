#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int /*<<< orphan*/  tcm_handle; scalar_t__ tcm_info; int /*<<< orphan*/  tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct netdev_tc_txq {int offset; int count; } ;
struct netdev_queue {TYPE_1__* qdisc_sleeping; } ;
struct netdev_qos_info {struct netdev_tc_txq* tc_to_txq; } ;
struct net_device {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {struct netdev_qos_info qos_data; } ;
struct TYPE_3__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 struct netdev_queue* FUNC3 (struct Qdisc*,unsigned long) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 unsigned long FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, unsigned long cl,
			 struct sk_buff *skb, struct tcmsg *tcm)
{
	struct net_device *dev = FUNC6(sch);
	struct netdev_qos_info *qos = &FUNC4(dev)->qos_data;

	if (cl <= FUNC5(dev)) {
		tcm->tcm_parent = TC_H_ROOT;
		tcm->tcm_info = 0;
	} else {
		int i;
		struct netdev_queue *dev_queue;

		dev_queue = FUNC3(sch, cl);
		tcm->tcm_parent = 0;
		for (i = 0; i < FUNC5(dev); i++) {
			struct netdev_tc_txq tc = qos->tc_to_txq[i];
			int q_idx = cl - FUNC5(dev);

			if (q_idx > tc.offset &&
			    q_idx <= tc.offset + tc.count) {
				tcm->tcm_parent =
					FUNC1(FUNC0(sch->handle),
						  FUNC2(i + 1));
				break;
			}
		}
		tcm->tcm_info = dev_queue->qdisc_sleeping->handle;
	}
	tcm->tcm_handle |= FUNC2(cl);
	return 0;
}