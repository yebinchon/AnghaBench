#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; scalar_t__ head; } ;
struct TYPE_4__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct dsa_slave_priv {int port; TYPE_3__* parent; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {TYPE_2__* dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  master_netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TRAILER ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 struct dsa_slave_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 

netdev_tx_t FUNC14(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC5(dev);
	struct sk_buff *nskb;
	int padlen;
	u8 *trailer;

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;

	/*
	 * We have to make sure that the trailer ends up as the very
	 * last 4 bytes of the packet.  This means that we have to pad
	 * the packet to the minimum ethernet frame size, if necessary,
	 * before adding the trailer.
	 */
	padlen = 0;
	if (skb->len < 60)
		padlen = 60 - skb->len;

	nskb = FUNC0(NET_IP_ALIGN + skb->len + padlen + 4, GFP_ATOMIC);
	if (nskb == NULL) {
		FUNC3(skb);
		return NETDEV_TX_OK;
	}
	FUNC9(nskb, NET_IP_ALIGN);

	FUNC10(nskb);
	FUNC11(nskb, FUNC7(skb) - skb->head);
	FUNC12(nskb, FUNC13(skb) - skb->head);
	FUNC6(skb, FUNC8(nskb, skb->len));
	FUNC3(skb);

	if (padlen) {
		u8 *pad = FUNC8(nskb, padlen);
		FUNC4(pad, 0, padlen);
	}

	trailer = FUNC8(nskb, 4);
	trailer[0] = 0x80;
	trailer[1] = 1 << p->port;
	trailer[2] = 0x10;
	trailer[3] = 0x00;

	nskb->protocol = FUNC2(ETH_P_TRAILER);

	nskb->dev = p->parent->dst->master_netdev;
	FUNC1(nskb);

	return NETDEV_TX_OK;
}