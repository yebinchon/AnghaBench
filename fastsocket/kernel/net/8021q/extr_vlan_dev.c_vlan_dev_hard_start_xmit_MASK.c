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
struct vlan_ethhdr {scalar_t__ h_vlan_proto; } ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct netdev_queue {unsigned int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  real_dev; int /*<<< orphan*/  cnt_inc_headroom_on_tx; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  cnt_encap_on_xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NET_XMIT_SUCCESS ; 
 int VLAN_FLAG_REORDER_HDR ; 
 unsigned int VLAN_HLEN ; 
 struct sk_buff* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct netdev_queue* FUNC4 (struct net_device*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
					    struct net_device *dev)
{
	int i = FUNC5(skb);
	struct netdev_queue *txq = FUNC4(dev, i);
	struct vlan_ethhdr *veth = (struct vlan_ethhdr *)(skb->data);
	unsigned int len;
	int ret;

	/* Handle non-VLAN frames if they are sent to us, for example by DHCP.
	 *
	 * NOTE: THIS ASSUMES DIX ETHERNET, SPECIFICALLY NOT SUPPORTING
	 * OTHER THINGS LIKE FDDI/TokenRing/802.3 SNAPs...
	 */
	if (veth->h_vlan_proto != FUNC2(ETH_P_8021Q) ||
	    FUNC8(dev)->flags & VLAN_FLAG_REORDER_HDR) {
		unsigned int orig_headroom = FUNC6(skb);
		u16 vlan_tci;

		FUNC8(dev)->cnt_encap_on_xmit++;

		vlan_tci = FUNC8(dev)->vlan_id;
		vlan_tci |= FUNC7(dev, skb);
		skb = FUNC0(skb, vlan_tci);
		if (!skb) {
			txq->tx_dropped++;
			return NETDEV_TX_OK;
		}

		if (orig_headroom < VLAN_HLEN)
			FUNC8(dev)->cnt_inc_headroom_on_tx++;
	}


	skb->dev = FUNC8(dev)->real_dev;
	len = skb->len;
	ret = FUNC1(skb);

	if (FUNC3(ret == NET_XMIT_SUCCESS)) {
		txq->tx_packets++;
		txq->tx_bytes += len;
	} else
		txq->tx_dropped++;

	return NETDEV_TX_OK;
}