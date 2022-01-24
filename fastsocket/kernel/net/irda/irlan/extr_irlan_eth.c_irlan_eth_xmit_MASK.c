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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct irlan_cb {scalar_t__ max_header_size; TYPE_1__ stats; int /*<<< orphan*/  tsap_data; scalar_t__ use_udata; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct irlan_cb* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
					struct net_device *dev)
{
	struct irlan_cb *self = FUNC3(dev);
	int ret;

	/* skb headroom large enough to contain all IrDA-headers? */
	if ((FUNC4(skb) < self->max_header_size) || (FUNC6(skb))) {
		struct sk_buff *new_skb =
			FUNC5(skb, self->max_header_size);

		/*  We have to free the original skb anyway */
		FUNC0(skb);

		/* Did the realloc succeed? */
		if (new_skb == NULL)
			return NETDEV_TX_OK;

		/* Use the new skb instead */
		skb = new_skb;
	}

	dev->trans_start = jiffies;

	/* Now queue the packet in the transport layer */
	if (self->use_udata)
		ret = FUNC2(self->tsap_data, skb);
	else
		ret = FUNC1(self->tsap_data, skb);

	if (ret < 0) {
		/*
		 * IrTTPs tx queue is full, so we just have to
		 * drop the frame! You might think that we should
		 * just return -1 and don't deallocate the frame,
		 * but that is dangerous since it's possible that
		 * we have replaced the original skb with a new
		 * one with larger headroom, and that would really
		 * confuse do_dev_queue_xmit() in dev.c! I have
		 * tried :-) DB
		 */
		/* irttp_data_request already free the packet */
		self->stats.tx_dropped++;
	} else {
		self->stats.tx_packets++;
		self->stats.tx_bytes += skb->len;
	}

	return NETDEV_TX_OK;
}