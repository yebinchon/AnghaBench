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
struct netpoll_info {int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  arp_tx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_flags; int /*<<< orphan*/  rx_np; } ;
struct netpoll {TYPE_1__* dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_netpoll_cleanup ) (TYPE_1__*) ;} ;
struct TYPE_2__ {struct netpoll_info* npinfo; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETPOLL_RX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct netpoll_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct netpoll_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct netpoll *np)
{
	struct netpoll_info *npinfo;
	unsigned long flags;

	npinfo = np->dev->npinfo;
	if (!npinfo)
		return;

	if (!npinfo->rx_np) {
		FUNC6(&npinfo->rx_lock, flags);
		npinfo->rx_flags &= ~NETPOLL_RX_ENABLED;
		FUNC7(&npinfo->rx_lock, flags);
	}

	if (FUNC1(&npinfo->refcnt)) {
		const struct net_device_ops *ops;

		ops = np->dev->netdev_ops;
		if (ops->ndo_netpoll_cleanup)
			ops->ndo_netpoll_cleanup(np->dev);

		FUNC4(np->dev->npinfo, NULL);

		/* avoid racing with NAPI reading npinfo */
		FUNC9();

		FUNC5(&npinfo->arp_tx);
		FUNC5(&npinfo->txq);
		FUNC2(&npinfo->tx_work);

		/* clean after last, unfinished work */
		FUNC0(&npinfo->txq);
		FUNC3(npinfo);
	}
}