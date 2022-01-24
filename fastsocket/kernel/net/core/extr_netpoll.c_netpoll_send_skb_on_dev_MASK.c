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
struct sk_buff {int dummy; } ;
struct netpoll_info {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  txq; } ;
struct netpoll {TYPE_1__* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device_ops {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  priv_flags; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  npinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_IN_NETPOLL ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 unsigned long USEC_PER_POLL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int (*) (struct sk_buff*,struct net_device*)) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (int) ; 
 struct netdev_queue* FUNC7 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct netpoll*) ; 
 struct netpoll_info* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC17 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 

void FUNC20(struct netpoll *np, struct sk_buff *skb,
			     struct net_device *dev)
{
	int status = NETDEV_TX_BUSY;
	unsigned long tries;
	const struct net_device_ops *ops = dev->netdev_ops;
	/* It is up to the caller to keep npinfo alive. */
	struct netpoll_info *npinfo;

	FUNC1(!FUNC5());

	npinfo = FUNC13(np->dev->npinfo);
	if (!npinfo || !FUNC9(dev) || !FUNC8(dev)) {
		FUNC2(skb);
		return;
	}

	/* don't get messages out of order, and no recursion */
	if (FUNC15(&npinfo->txq) == 0 && !FUNC11(dev)) {
		struct netdev_queue *txq;

		txq = FUNC7(dev, skb);

		/* try until next clock tick */
		for (tries = FUNC6(1)/USEC_PER_POLL;
		     tries > 0; --tries) {
			if (FUNC3(txq)) {
				if (!FUNC10(txq)) {
					dev->priv_flags |= IFF_IN_NETPOLL;
					status = ops->ndo_start_xmit(skb, dev);
					dev->priv_flags &= ~IFF_IN_NETPOLL;
					if (status == NETDEV_TX_OK)
						FUNC18(txq);
				}
				FUNC4(txq);

				if (status == NETDEV_TX_OK)
					break;

			}

			/* tickle device maybe there is some cleanup */
			FUNC12(np);

			FUNC19(USEC_PER_POLL);
		}

		FUNC0(!FUNC5(),
			"netpoll_send_skb_on_dev(): %s enabled interrupts in poll (%pF)\n",
			dev->name, ops->ndo_start_xmit);

	}

	if (status != NETDEV_TX_OK) {
		FUNC16(&npinfo->txq, skb);
		FUNC14(&npinfo->tx_work,0);
	}
}