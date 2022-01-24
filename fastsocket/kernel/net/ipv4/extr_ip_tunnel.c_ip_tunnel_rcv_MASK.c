#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tnl_ptk_info {int flags; int /*<<< orphan*/  seq; } ;
struct sk_buff {TYPE_4__* dev; int /*<<< orphan*/  protocol; scalar_t__ len; int /*<<< orphan*/  pkt_type; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  multicast; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct TYPE_6__ {int i_flags; } ;
struct ip_tunnel {int /*<<< orphan*/  gro_cells; TYPE_4__* dev; scalar_t__ i_seqno; TYPE_2__ parms; } ;
typedef  scalar_t__ s32 ;
struct TYPE_8__ {scalar_t__ type; struct net_device_stats stats; } ;
struct TYPE_5__ {scalar_t__ iif; } ;
struct TYPE_7__ {TYPE_1__ fl; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct iphdr const*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct sk_buff*) ; 

int FUNC10(struct ip_tunnel *tunnel, struct sk_buff *skb,
		  const struct tnl_ptk_info *tpi, bool log_ecn_error)
{
	struct net_device_stats *stats = &tunnel->dev->stats;
	const struct iphdr *iph = FUNC3(skb);

#ifdef CONFIG_NET_IPGRE_BROADCAST
	if (ipv4_is_multicast(iph->daddr)) {
		/* Looped back packet, drop it! */
		if (skb_rtable(skb)->fl.iif == 0)
			goto drop;
		tunnel->dev->stats.multicast++;
		skb->pkt_type = PACKET_BROADCAST;
	}
#endif

	if ((!(tpi->flags&TUNNEL_CSUM) &&  (tunnel->parms.i_flags&TUNNEL_CSUM)) ||
	     ((tpi->flags&TUNNEL_CSUM) && !(tunnel->parms.i_flags&TUNNEL_CSUM))) {
		tunnel->dev->stats.rx_crc_errors++;
		tunnel->dev->stats.rx_errors++;
		goto drop;
	}

	if (tunnel->parms.i_flags&TUNNEL_SEQ) {
		if (!(tpi->flags&TUNNEL_SEQ) ||
		    (tunnel->i_seqno && (s32)(FUNC7(tpi->seq) - tunnel->i_seqno) < 0)) {
			tunnel->dev->stats.rx_fifo_errors++;
			tunnel->dev->stats.rx_errors++;
			goto drop;
		}
		tunnel->i_seqno = FUNC7(tpi->seq) + 1;
	}

	FUNC4(iph, skb);

	stats->rx_packets++;
	stats->rx_bytes += skb->len;

	if (tunnel->dev->type == ARPHRD_ETHER) {
		skb->protocol = FUNC1(skb, tunnel->dev);
		FUNC8(skb, FUNC0(skb), ETH_HLEN);
	} else {
		skb->dev = tunnel->dev;
	}
	FUNC2(&tunnel->gro_cells, skb);
	return 0;

drop:
	FUNC6(skb);
	return 0;
}