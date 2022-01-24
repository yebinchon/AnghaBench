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
struct sk_buff {unsigned char* data; scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge_fdb_entry {int /*<<< orphan*/  dst; } ;
struct net_bridge {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {scalar_t__ mrouters_only; struct net_device* brdev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct net_bridge_fdb_entry* FUNC1 (struct net_bridge*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct sk_buff*) ; 
 struct net_bridge_mdb_entry* FUNC4 (struct net_bridge*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_mdb_entry*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct net_bridge*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 scalar_t__ FUNC8 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct net_bridge* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC15(struct sk_buff *skb, struct net_device *dev)
{
	struct net_bridge *br = FUNC10(dev);
	const unsigned char *dest = skb->data;
	struct net_bridge_fdb_entry *dst;
	struct net_bridge_mdb_entry *mdst;

	FUNC0(skb)->brdev = dev;

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;

	FUNC13(skb);
	FUNC12(skb, ETH_HLEN);

	if (FUNC7(dest))
		FUNC3(br, skb);
	else if (FUNC8(dest)) {
		if (FUNC14(FUNC11(dev))) {
			FUNC3(br, skb);
			goto out;
		}
		if (FUNC6(br, NULL, skb)) {
			FUNC9(skb);
			goto out;
		}

		mdst = FUNC4(br, skb);
		if (mdst || FUNC0(skb)->mrouters_only)
			FUNC5(mdst, skb);
		else
			FUNC3(br, skb);
	} else if ((dst = FUNC1(br, dest)) != NULL)
		FUNC2(dst->dst, skb);
	else
		FUNC3(br, skb);

out:
	return NETDEV_TX_OK;
}