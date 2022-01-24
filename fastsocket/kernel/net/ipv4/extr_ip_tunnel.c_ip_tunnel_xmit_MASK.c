#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct TYPE_14__ {int header_len; struct net_device* dev; } ;
struct TYPE_10__ {TYPE_7__ dst; } ;
struct rtable {scalar_t__ rt_gateway; TYPE_3__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_fifo_errors; } ;
struct net_device {unsigned int needed_headroom; TYPE_6__ stats; } ;
struct neighbour {int /*<<< orphan*/  primary_key; } ;
struct ipv6hdr {int hop_limit; } ;
struct iphdr {scalar_t__ daddr; int tos; int frag_off; int ttl; int /*<<< orphan*/  saddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_9__ {int /*<<< orphan*/  link; int /*<<< orphan*/  o_key; TYPE_1__ iph; } ;
struct ip_tunnel {scalar_t__ err_count; scalar_t__ err_time; TYPE_2__ parms; scalar_t__ hlen; } ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct flowi {int /*<<< orphan*/  fl4_dst; int /*<<< orphan*/  fl4_src; } ;
typedef  scalar_t__ __be32 ;
typedef  int __be16 ;
struct TYPE_12__ {struct in6_addr daddr; } ;
struct TYPE_11__ {struct neighbour* neighbour; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPTUNNEL_ERR_TIMEO ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_COMPATv4 ; 
 int /*<<< orphan*/  IP_DF ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  RTAX_HOPLIMIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct rtable* FUNC8 (int /*<<< orphan*/ ,struct flowi*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct iphdr const*,struct sk_buff*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int,int,struct iphdr const*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_6__*) ; 
 int FUNC13 (struct in6_addr const*) ; 
 int FUNC14 (struct ipv6hdr const*) ; 
 TYPE_5__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC16 (struct neighbour*) ; 
 struct ip_tunnel* FUNC17 (struct net_device*) ; 
 scalar_t__ FUNC18 (struct sk_buff*,unsigned int) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 struct rtable* FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC22 (struct net_device*,struct sk_buff*,struct rtable*,int) ; 

void FUNC23(struct sk_buff *skb, struct net_device *dev,
		    const struct iphdr *tnl_params, const u8 protocol)
{
	struct ip_tunnel *tunnel = FUNC17(dev);
	const struct iphdr *inner_iph;
	struct flowi fl4;
	u8     tos, ttl;
	__be16 df;
	struct rtable *rt;		/* Route to the other host */
	unsigned int max_headroom;	/* The extra header space needed */
	__be32 dst;
	int err;

	/* inner_iph = (const struct iphdr *)skb_inner_network_header(skb); */
	inner_iph = (const struct iphdr *)(skb->data + tunnel->hlen);

	dst = tnl_params->daddr;
	if (dst == 0) {
		/* NBMA tunnel */

		if (FUNC19(skb) == NULL) {
			dev->stats.tx_fifo_errors++;
			goto tx_error;
		}

		if (skb->protocol == FUNC7(ETH_P_IP)) {
			rt = FUNC20(skb);
			if (rt->rt_gateway)
				dst = rt->rt_gateway;
			else
				dst = inner_iph->daddr;
		}
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
		else if (skb->protocol == htons(ETH_P_IPV6)) {
			const struct in6_addr *addr6;
			struct neighbour *neigh;
			bool do_tx_error_icmp;
			int addr_type;

			neigh = skb_dst(skb)->neighbour;
			if (neigh == NULL)
				goto tx_error;

			addr6 = (const struct in6_addr *)&neigh->primary_key;
			addr_type = ipv6_addr_type(addr6);

			if (addr_type == IPV6_ADDR_ANY) {
				addr6 = &ipv6_hdr(skb)->daddr;
				addr_type = ipv6_addr_type(addr6);
			}

			if ((addr_type & IPV6_ADDR_COMPATv4) == 0)
				do_tx_error_icmp = true;
			else {
				do_tx_error_icmp = false;
				dst = addr6->s6_addr32[3];
			}
			neigh_release(neigh);
			if (do_tx_error_icmp)
				goto tx_error_icmp;
		}
#endif
		else
			goto tx_error;
	}

	tos = tnl_params->tos;
	if (tos & 0x1) {
		tos &= ~0x1;
		if (skb->protocol == FUNC7(ETH_P_IP))
			tos = inner_iph->tos;
		else if (skb->protocol == FUNC7(ETH_P_IPV6))
			tos = FUNC14((const struct ipv6hdr *)inner_iph);
	}

	rt = FUNC8(FUNC4(dev), &fl4,
				    tunnel->parms.iph.protocol,
				    dst, tnl_params->saddr,
				    tunnel->parms.o_key,
				    FUNC2(tos),
				    tunnel->parms.link);
	if (FUNC0(rt)) {
		dev->stats.tx_carrier_errors++;
		goto tx_error;
	}
	if (rt->u.dst.dev == dev) {
		FUNC9(rt);
		dev->stats.collisions++;
		goto tx_error;
	}

	if (FUNC22(dev, skb, rt, tnl_params->frag_off)) {
		FUNC9(rt);
		goto tx_error;
	}

	if (tunnel->err_count > 0) {
		if (FUNC21(jiffies,
				tunnel->err_time + IPTUNNEL_ERR_TIMEO)) {
			tunnel->err_count--;

			FUNC5(skb);
		} else
			tunnel->err_count = 0;
	}

	ttl = tnl_params->ttl;
	if (ttl == 0) {
		if (skb->protocol == FUNC7(ETH_P_IP))
			ttl = inner_iph->ttl;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
		else if (skb->protocol == htons(ETH_P_IPV6))
			ttl = ((const struct ipv6hdr *)inner_iph)->hop_limit;
#endif
		else
			ttl = FUNC6(&rt->u.dst, RTAX_HOPLIMIT);
	}

	df = tnl_params->frag_off;
	if (skb->protocol == FUNC7(ETH_P_IP))
		df |= (inner_iph->frag_off&FUNC7(IP_DF));

	max_headroom = FUNC1(rt->u.dst.dev) + sizeof(struct iphdr)
			+ rt->u.dst.header_len;
	if (max_headroom > dev->needed_headroom) {
		dev->needed_headroom = max_headroom;
		if (FUNC18(skb, dev->needed_headroom)) {
			dev->stats.tx_dropped++;
			FUNC3(skb);
			return;
		}
	}

	err = FUNC11(FUNC4(dev), rt, skb,
			    fl4.fl4_src, fl4.fl4_dst, protocol,
			    FUNC10(tos, inner_iph, skb), ttl, df,
			    inner_iph);
	FUNC12(err, &dev->stats);
	return;

#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
tx_error_icmp:
	dst_link_failure(skb);
#endif
tx_error:
	dev->stats.tx_errors++;
	FUNC3(skb);
}