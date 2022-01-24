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
struct nlattr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {scalar_t__ parent; int /*<<< orphan*/  flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  TCQ_F_MQROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ TC_H_ROOT ; 
 struct Qdisc** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 struct netdev_queue* FUNC5 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  pfifo_fast_ops ; 
 struct Qdisc* FUNC7 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (struct Qdisc*) ; 
 struct mq_sched* FUNC9 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct nlattr *opt)
{
	struct net_device *dev = FUNC8(sch);
	struct mq_sched *priv = FUNC9(sch);
	struct netdev_queue *dev_queue;
	struct Qdisc *qdisc;
	unsigned int ntx;

	if (sch->parent != TC_H_ROOT)
		return -EOPNOTSUPP;

	if (!FUNC6(dev))
		return -EOPNOTSUPP;

	/* pre-allocate qdiscs, attachment can't fail */
	priv->qdiscs = FUNC3(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
			       GFP_KERNEL);
	if (priv->qdiscs == NULL)
		return -ENOMEM;

	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		dev_queue = FUNC5(dev, ntx);
		qdisc = FUNC7(dev, dev_queue, &pfifo_fast_ops,
					  FUNC1(FUNC0(sch->handle),
						    FUNC2(ntx + 1)));
		if (qdisc == NULL)
			goto err;
		qdisc->flags |= TCQ_F_CAN_BYPASS;
		priv->qdiscs[ntx] = qdisc;
	}

	sch->flags |= TCQ_F_MQROOT;
	return 0;

err:
	FUNC4(sch);
	return -ENOMEM;
}