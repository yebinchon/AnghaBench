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
struct teql_sched_data {struct neighbour* ncache; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct netdev_queue {int /*<<< orphan*/  qdisc; } ;
struct net_device {int dummy; } ;
struct neighbour {int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; int /*<<< orphan*/  primary_key; TYPE_2__* tbl; int /*<<< orphan*/  refcnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  key_len; } ;
struct TYPE_3__ {struct neighbour* neighbour; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int FUNC1 (struct neighbour*) ; 
 struct neighbour* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 struct netdev_queue* FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct teql_sched_data* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct neighbour**,struct neighbour*) ; 

__attribute__((used)) static int
FUNC16(struct sk_buff *skb, struct sk_buff *skb_res, struct net_device *dev)
{
	struct netdev_queue *dev_queue = FUNC8(dev, 0);
	struct teql_sched_data *q = FUNC10(dev_queue->qdisc);
	struct neighbour *mn = FUNC13(skb)->neighbour;
	struct neighbour *n = q->ncache;

	if (mn->tbl == NULL)
		return -EINVAL;
	if (n && n->tbl == mn->tbl &&
	    FUNC5(n->primary_key, mn->primary_key, mn->tbl->key_len) == 0) {
		FUNC3(&n->refcnt);
	} else {
		n = FUNC2(mn->tbl, mn->primary_key, dev);
		if (FUNC0(n))
			return FUNC1(n);
	}
	if (FUNC6(n, skb_res) == 0) {
		int err;

		FUNC11(&n->lock);
		err = FUNC4(skb, dev, FUNC9(skb->protocol),
				      n->ha, NULL, skb->len);
		FUNC12(&n->lock);

		if (err < 0) {
			FUNC7(n);
			return -EINVAL;
		}
		FUNC14(FUNC15(&q->ncache, n));
		return 0;
	}
	FUNC7(n);
	return (skb_res == NULL) ? -EAGAIN : 1;
}