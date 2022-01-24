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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int flags; struct Qdisc* qdisc; struct netdev_queue rx_queue; } ;
struct Qdisc_class_ops {int (* graft ) (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**) ;unsigned long (* get ) (struct Qdisc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* put ) (struct Qdisc*,unsigned long) ;} ;
struct Qdisc {int flags; TYPE_1__* ops; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; int /*<<< orphan*/  (* attach ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int IFF_UP ; 
 int TCQ_F_INGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct Qdisc* FUNC3 (struct netdev_queue*,struct Qdisc*) ; 
 struct netdev_queue* FUNC4 (struct net_device*,unsigned int) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ,struct Qdisc*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 unsigned long FUNC8 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct Qdisc *parent,
		       struct sk_buff *skb, struct nlmsghdr *n, u32 classid,
		       struct Qdisc *new, struct Qdisc *old)
{
	struct Qdisc *q = old;
	int err = 0;

	if (parent == NULL) {
		unsigned int i, num_q, ingress;

		ingress = 0;
		num_q = dev->num_tx_queues;
		if ((q && q->flags & TCQ_F_INGRESS) ||
		    (new && new->flags & TCQ_F_INGRESS)) {
			num_q = 1;
			ingress = 1;
		}

		if (dev->flags & IFF_UP)
			FUNC2(dev);

		if (new && new->ops->attach) {
			new->ops->attach(new);
			num_q = 0;
		}

		for (i = 0; i < num_q; i++) {
			struct netdev_queue *dev_queue = &dev->rx_queue;

			if (!ingress)
				dev_queue = FUNC4(dev, i);

			old = FUNC3(dev_queue, new);
			if (new && i > 0)
				FUNC0(&new->refcnt);

			if (!ingress)
				FUNC6(old);
		}

		if (!ingress) {
			FUNC5(skb, n, classid, dev->qdisc, new);
			if (new && !new->ops->attach)
				FUNC0(&new->refcnt);
			dev->qdisc = new ? : &noop_qdisc;
		} else {
			FUNC5(skb, n, classid, old, new);
		}

		if (dev->flags & IFF_UP)
			FUNC1(dev);
	} else {
		const struct Qdisc_class_ops *cops = parent->ops->cl_ops;

		err = -EOPNOTSUPP;
		if (cops && cops->graft) {
			unsigned long cl = cops->get(parent, classid);
			if (cl) {
				err = cops->graft(parent, cl, new, &old);
				cops->put(parent, cl);
			} else
				err = -ENOENT;
		}
		if (!err)
			FUNC5(skb, n, classid, old, new);
	}
	return err;
}