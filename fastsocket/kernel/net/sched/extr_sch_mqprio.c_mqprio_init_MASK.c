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
struct tc_mqprio_qopt {int num_tc; int /*<<< orphan*/ * prio_tc_map; int /*<<< orphan*/ * offset; int /*<<< orphan*/ * count; } ;
struct nlattr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct mqprio_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {scalar_t__ parent; int /*<<< orphan*/  flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  TCQ_F_MQROOT ; 
 int TC_BITMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TC_H_ROOT ; 
 scalar_t__ TC_MAX_QUEUE ; 
 int TC_QOPT_BITMASK ; 
 scalar_t__ TC_QOPT_MAX_QUEUE ; 
 struct Qdisc** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 scalar_t__ FUNC6 (struct net_device*,struct tc_mqprio_qopt*) ; 
 struct netdev_queue* FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct tc_mqprio_qopt* FUNC12 (struct nlattr*) ; 
 int FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  pfifo_fast_ops ; 
 struct Qdisc* FUNC14 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC15 (struct Qdisc*) ; 
 struct mqprio_sched* FUNC16 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC17(struct Qdisc *sch, struct nlattr *opt)
{
	struct net_device *dev = FUNC15(sch);
	struct mqprio_sched *priv = FUNC16(sch);
	struct netdev_queue *dev_queue;
	struct Qdisc *qdisc;
	int i, err = -EOPNOTSUPP;
	struct tc_mqprio_qopt *qopt = NULL;

	FUNC0(TC_MAX_QUEUE != TC_QOPT_MAX_QUEUE);
	FUNC0(TC_BITMASK != TC_QOPT_BITMASK);

	if (sch->parent != TC_H_ROOT)
		return -EOPNOTSUPP;

	if (!FUNC11(dev))
		return -EOPNOTSUPP;

	if (!opt || FUNC13(opt) < sizeof(*qopt))
		return -EINVAL;

	qopt = FUNC12(opt);
	if (FUNC6(dev, qopt))
		return -EINVAL;

	/* pre-allocate qdisc, attachment can't fail */
	priv->qdiscs = FUNC4(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
			       GFP_KERNEL);
	if (priv->qdiscs == NULL) {
		err = -ENOMEM;
		goto err;
	}

	for (i = 0; i < dev->num_tx_queues; i++) {
		dev_queue = FUNC7(dev, i);
		qdisc = FUNC14(dev, dev_queue, &pfifo_fast_ops,
					  FUNC2(FUNC1(sch->handle),
						    FUNC3(i + 1)));
		if (qdisc == NULL) {
			err = -ENOMEM;
			goto err;
		}
		qdisc->flags |= TCQ_F_CAN_BYPASS;
		priv->qdiscs[i] = qdisc;
	}

	FUNC8(dev, qopt->num_tc);
	for (i = 0; i < qopt->num_tc; i++)
		FUNC10(dev, i,
				    qopt->count[i], qopt->offset[i]);

	/* Always use supplied priority mappings */
	for (i = 0; i < TC_BITMASK + 1; i++)
		FUNC9(dev, i, qopt->prio_tc_map[i]);

	sch->flags |= TCQ_F_MQROOT;
	return 0;

err:
	FUNC5(sch);
	return err;
}