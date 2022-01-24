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
typedef  int u8 ;
struct sk_buff {scalar_t__ len; TYPE_2__* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; } ;
struct packet_type {int dummy; } ;
struct net_device {struct dsa_switch_tree* dsa_ptr; } ;
struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {TYPE_2__** ports; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int DSA_MAX_PORTS ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev,
		       struct packet_type *pt, struct net_device *orig_dev)
{
	struct dsa_switch_tree *dst = dev->dsa_ptr;
	struct dsa_switch *ds;
	u8 *trailer;
	int source_port;

	if (FUNC8(dst == NULL))
		goto out_drop;
	ds = dst->ds[0];

	skb = FUNC7(skb, GFP_ATOMIC);
	if (skb == NULL)
		goto out;

	if (FUNC4(skb))
		goto out_drop;

	trailer = FUNC6(skb) - 4;
	if (trailer[0] != 0x80 || (trailer[1] & 0xf8) != 0x00 ||
	    (trailer[3] & 0xef) != 0x00 || trailer[3] != 0x00)
		goto out_drop;

	source_port = trailer[1] & 7;
	if (source_port >= DSA_MAX_PORTS || ds->ports[source_port] == NULL)
		goto out_drop;

	FUNC3(skb, skb->len - 4);

	skb->dev = ds->ports[source_port];
	FUNC5(skb, ETH_HLEN);
	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC0(skb, skb->dev);

	skb->dev->stats.rx_packets++;
	skb->dev->stats.rx_bytes += skb->len;

	FUNC2(skb);

	return 0;

out_drop:
	FUNC1(skb);
out:
	return 0;
}