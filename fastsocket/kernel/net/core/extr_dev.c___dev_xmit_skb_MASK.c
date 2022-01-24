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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  __QDISC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC14(struct sk_buff *skb, struct Qdisc *q,
				 struct net_device *dev,
				 struct netdev_queue *txq)
{
	spinlock_t *root_lock = FUNC5(q);
	int rc;

	FUNC9(root_lock);
	if (FUNC13(FUNC12(__QDISC_STATE_DEACTIVATED, &q->state))) {
		FUNC3(skb);
		rc = NET_XMIT_DROP;
	} else if ((q->flags & TCQ_F_CAN_BYPASS) && !FUNC6(q) &&
		   !FUNC11(__QDISC_STATE_RUNNING, &q->state)) {
		/*
		 * This is a work-conserving queue; there are no old skbs
		 * waiting to be sent out; and the qdisc is not running -
		 * xmit the skb directly.
		 */
		FUNC1(q, skb->len);
		if (FUNC8(skb, q, dev, txq, root_lock))
			FUNC0(q);
		else
			FUNC2(__QDISC_STATE_RUNNING, &q->state);

		rc = NET_XMIT_SUCCESS;
	} else {
		rc = FUNC4(skb, q);
		FUNC7(q);
	}
	FUNC10(root_lock);

	return rc;
}