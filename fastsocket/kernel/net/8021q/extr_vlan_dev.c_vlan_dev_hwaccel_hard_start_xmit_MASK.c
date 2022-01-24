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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; } ;
struct netdev_queue {unsigned int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  real_dev; int /*<<< orphan*/  vlan_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NET_XMIT_SUCCESS ; 
 struct sk_buff* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct netdev_queue* FUNC3 (struct net_device*,int) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
						    struct net_device *dev)
{
	int i = FUNC4(skb);
	struct netdev_queue *txq = FUNC3(dev, i);
	u16 vlan_tci;
	unsigned int len;
	int ret;

	vlan_tci = FUNC6(dev)->vlan_id;
	vlan_tci |= FUNC5(dev, skb);
	skb = FUNC0(skb, vlan_tci);

	skb->dev = FUNC6(dev)->real_dev;
	len = skb->len;
	ret = FUNC1(skb);

	if (FUNC2(ret == NET_XMIT_SUCCESS)) {
		txq->tx_packets++;
		txq->tx_bytes += len;
	} else
		txq->tx_dropped++;

	return NETDEV_TX_OK;
}