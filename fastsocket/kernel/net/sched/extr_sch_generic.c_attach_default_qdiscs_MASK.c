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
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {scalar_t__ tx_queue_len; struct Qdisc* qdisc; } ;
struct Qdisc {TYPE_1__* ops; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* attach ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  attach_one_default_qdisc ; 
 int /*<<< orphan*/  mq_qdisc_ops ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct Qdisc* FUNC4 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct netdev_queue *txq;
	struct Qdisc *qdisc;

	txq = FUNC2(dev, 0);

	if (!FUNC3(dev) || dev->tx_queue_len == 0) {
		FUNC1(dev, attach_one_default_qdisc, NULL);
		dev->qdisc = txq->qdisc_sleeping;
		FUNC0(&dev->qdisc->refcnt);
	} else {
		qdisc = FUNC4(dev, txq, &mq_qdisc_ops, TC_H_ROOT);
		if (qdisc) {
			qdisc->ops->attach(qdisc);
			dev->qdisc = qdisc;
		}
	}
}