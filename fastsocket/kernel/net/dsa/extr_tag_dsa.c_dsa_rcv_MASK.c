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
struct sk_buff {int* data; scalar_t__ ip_summed; scalar_t__ len; TYPE_3__* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  csum; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_switch_tree* dsa_ptr; } ;
struct dsa_switch_tree {struct dsa_switch** ds; TYPE_1__* pd; } ;
struct dsa_switch {TYPE_3__** ports; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int nr_chips; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int DSA_HLEN ; 
 int DSA_MAX_PORTS ; 
 int ETH_ALEN ; 
 int* ETH_HLEN ; 
 int ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int*) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct net_device *dev,
		   struct packet_type *pt, struct net_device *orig_dev)
{
	struct dsa_switch_tree *dst = dev->dsa_ptr;
	struct dsa_switch *ds;
	u8 *dsa_header;
	int source_device;
	int source_port;

	if (FUNC12(dst == NULL))
		goto out_drop;

	skb = FUNC11(skb, GFP_ATOMIC);
	if (skb == NULL)
		goto out;

	if (FUNC12(!FUNC8(skb, DSA_HLEN)))
		goto out_drop;

	/*
	 * The ethertype field is part of the DSA header.
	 */
	dsa_header = skb->data - 2;

	/*
	 * Check that frame type is either TO_CPU or FORWARD.
	 */
	if ((dsa_header[0] & 0xc0) != 0x00 && (dsa_header[0] & 0xc0) != 0xc0)
		goto out_drop;

	/*
	 * Determine source device and port.
	 */
	source_device = dsa_header[0] & 0x1f;
	source_port = (dsa_header[1] >> 3) & 0x1f;

	/*
	 * Check that the source device exists and that the source
	 * port is a registered DSA port.
	 */
	if (source_device >= dst->pd->nr_chips)
		goto out_drop;
	ds = dst->ds[source_device];
	if (source_port >= DSA_MAX_PORTS || ds->ports[source_port] == NULL)
		goto out_drop;

	/*
	 * Convert the DSA header to an 802.1q header if the 'tagged'
	 * bit in the DSA header is set.  If the 'tagged' bit is clear,
	 * delete the DSA header entirely.
	 */
	if (dsa_header[0] & 0x20) {
		u8 new_header[4];

		/*
		 * Insert 802.1q ethertype and copy the VLAN-related
		 * fields, but clear the bit that will hold CFI (since
		 * DSA uses that bit location for another purpose).
		 */
		new_header[0] = (ETH_P_8021Q >> 8) & 0xff;
		new_header[1] = ETH_P_8021Q & 0xff;
		new_header[2] = dsa_header[2] & ~0x10;
		new_header[3] = dsa_header[3];

		/*
		 * Move CFI bit from its place in the DSA header to
		 * its 802.1q-designated place.
		 */
		if (dsa_header[1] & 0x01)
			new_header[2] |= 0x10;

		/*
		 * Update packet checksum if skb is CHECKSUM_COMPLETE.
		 */
		if (skb->ip_summed == CHECKSUM_COMPLETE) {
			__wsum c = skb->csum;
			c = FUNC0(c, FUNC1(new_header + 2, 2, 0));
			c = FUNC2(c, FUNC1(dsa_header + 2, 2, 0));
			skb->csum = c;
		}

		FUNC5(dsa_header, new_header, DSA_HLEN);
	} else {
		/*
		 * Remove DSA tag and update checksum.
		 */
		FUNC9(skb, DSA_HLEN);
		FUNC6(skb->data - ETH_HLEN,
			skb->data - ETH_HLEN - DSA_HLEN,
			2 * ETH_ALEN);
	}

	skb->dev = ds->ports[source_port];
	FUNC10(skb, ETH_HLEN);
	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC3(skb, skb->dev);

	skb->dev->stats.rx_packets++;
	skb->dev->stats.rx_bytes += skb->len;

	FUNC7(skb);

	return 0;

out_drop:
	FUNC4(skb);
out:
	return 0;
}