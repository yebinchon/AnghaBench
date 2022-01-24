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
struct teql_master {struct Qdisc* slaves; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {unsigned int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; struct Qdisc* qdisc_sleeping; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; struct net_device_ops* netdev_ops; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 void* FUNC0 (struct Qdisc*) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct netdev_queue* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct teql_master* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 struct net_device* FUNC14 (struct Qdisc*) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct net_device*) ; 
 int FUNC19 (struct sk_buff*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct netdev_queue*) ; 

__attribute__((used)) static netdev_tx_t FUNC21(struct sk_buff *skb, struct net_device *dev)
{
	struct teql_master *master = FUNC7(dev);
	struct netdev_queue *txq = FUNC6(dev, 0);
	struct Qdisc *start, *q;
	int busy;
	int nores;
	int subq = FUNC16(skb);
	struct sk_buff *skb_res = NULL;

	start = master->slaves;

restart:
	nores = 0;
	busy = 0;

	if ((q = start) == NULL)
		goto drop;

	do {
		struct net_device *slave = FUNC14(q);
		struct netdev_queue *slave_txq = FUNC6(slave, 0);
		const struct net_device_ops *slave_ops = slave->netdev_ops;

		if (slave_txq->qdisc_sleeping != q)
			continue;
		if (FUNC1(slave, subq) ||
		    !FUNC9(slave)) {
			busy = 1;
			continue;
		}

		switch (FUNC19(skb, skb_res, slave)) {
		case 0:
			if (FUNC2(slave_txq)) {
				unsigned int length = FUNC15(skb);

				if (!FUNC12(slave_txq) &&
				    !FUNC11(slave_txq) &&
				    slave_ops->ndo_start_xmit(skb, slave) == NETDEV_TX_OK) {
					FUNC20(slave_txq);
					FUNC3(slave_txq);
					master->slaves = FUNC0(q);
					FUNC13(dev);
					txq->tx_packets++;
					txq->tx_bytes += length;
					return NETDEV_TX_OK;
				}
				FUNC3(slave_txq);
			}
			if (FUNC8(dev))
				busy = 1;
			break;
		case 1:
			master->slaves = FUNC0(q);
			return NETDEV_TX_OK;
		default:
			nores = 1;
			break;
		}
		FUNC4(skb, FUNC17(skb));
	} while ((q = FUNC0(q)) != start);

	if (nores && skb_res == NULL) {
		skb_res = skb;
		goto restart;
	}

	if (busy) {
		FUNC10(dev);
		return NETDEV_TX_BUSY;
	}
	dev->stats.tx_errors++;

drop:
	txq->tx_dropped++;
	FUNC5(skb);
	return NETDEV_TX_OK;
}