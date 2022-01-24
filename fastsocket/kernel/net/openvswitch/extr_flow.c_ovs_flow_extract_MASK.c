#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct udphdr {int source; int dest; } ;
struct tcphdr {int source; int dest; } ;
struct TYPE_26__ {scalar_t__ proto; scalar_t__ frag; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_20__ {int src; int dst; } ;
struct TYPE_21__ {TYPE_3__ tp; } ;
struct TYPE_23__ {int tci; int type; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; } ;
struct TYPE_19__ {int /*<<< orphan*/ * tha; int /*<<< orphan*/ * sha; } ;
struct TYPE_24__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_18__ {int src; int dst; } ;
struct TYPE_25__ {TYPE_2__ arp; TYPE_7__ addr; TYPE_1__ tp; } ;
struct TYPE_22__ {int /*<<< orphan*/  skb_mark; int /*<<< orphan*/  in_port; int /*<<< orphan*/  priority; } ;
struct sw_flow_key {TYPE_9__ ip; TYPE_4__ ipv6; TYPE_6__ eth; TYPE_8__ ipv4; TYPE_5__ phy; int /*<<< orphan*/  tun_key; } ;
struct sk_buff {int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; scalar_t__ data; int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct iphdr {scalar_t__ protocol; int frag_off; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct icmphdr {int /*<<< orphan*/  code; int /*<<< orphan*/  type; } ;
struct ethhdr {int h_proto; scalar_t__ h_dest; scalar_t__ h_source; } ;
struct arp_eth_header {int ar_hrd; int ar_pro; int ar_hln; int ar_pln; scalar_t__ ar_tha; scalar_t__ ar_sha; scalar_t__ ar_tip; scalar_t__ ar_sip; int /*<<< orphan*/  ar_op; } ;
typedef  int __be16 ;
struct TYPE_17__ {scalar_t__ tun_key; } ;
struct TYPE_16__ {int /*<<< orphan*/  arp; int /*<<< orphan*/  tp; int /*<<< orphan*/  addr; } ;
struct TYPE_15__ {int /*<<< orphan*/  tp; } ;
struct TYPE_14__ {int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ETH_P_RARP ; 
 int IPPROTO_ICMP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_MF ; 
 int /*<<< orphan*/  IP_OFFSET ; 
 scalar_t__ NEXTHDR_ICMP ; 
 scalar_t__ NEXTHDR_TCP ; 
 scalar_t__ NEXTHDR_UDP ; 
 TYPE_13__* FUNC0 (struct sk_buff*) ; 
 void* OVS_FRAG_TYPE_FIRST ; 
 scalar_t__ OVS_FRAG_TYPE_LATER ; 
 int SKB_GSO_UDP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 struct ethhdr* eth ; 
 struct ethhdr* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 struct icmphdr* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 struct iphdr* FUNC11 (struct sk_buff*) ; 
 TYPE_12__ ipv4 ; 
 TYPE_11__ ipv6 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sw_flow_key*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*,struct sw_flow_key*,int*,int) ; 
 int FUNC17 (struct sk_buff*,struct sw_flow_key*,int*) ; 
 int FUNC18 (struct sk_buff*,struct sw_flow_key*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 TYPE_10__* FUNC23 (struct sk_buff*) ; 
 struct tcphdr* FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 struct udphdr* FUNC26 (struct sk_buff*) ; 
 scalar_t__ FUNC27 (struct sk_buff*) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (struct sk_buff*) ; 

int FUNC30(struct sk_buff *skb, u16 in_port, struct sw_flow_key *key,
		 int *key_lenp)
{
	int error = 0;
	int key_len = FUNC1(eth);
	struct ethhdr *eth;

	FUNC13(key, 0, sizeof(*key));

	key->phy.priority = skb->priority;
	if (FUNC0(skb)->tun_key)
		FUNC12(&key->tun_key, FUNC0(skb)->tun_key, sizeof(key->tun_key));
	key->phy.in_port = in_port;
	key->phy.skb_mark = skb->mark;

	FUNC21(skb);

	/* Link layer.  We are guaranteed to have at least the 14 byte Ethernet
	 * header in the linear data area.
	 */
	eth = FUNC6(skb);
	FUNC12(key->eth.src, eth->h_source, ETH_ALEN);
	FUNC12(key->eth.dst, eth->h_dest, ETH_ALEN);

	FUNC2(skb, 2 * ETH_ALEN);
	/* We are going to push all headers that we pull, so no need to
	 * update skb->csum here.
	 */

	if (FUNC29(skb))
		key->eth.tci = FUNC7(skb->vlan_tci);
	else if (eth->h_proto == FUNC7(ETH_P_8021Q))
		if (FUNC28(FUNC18(skb, key)))
			return -ENOMEM;

	key->eth.type = FUNC15(skb);
	if (FUNC28(key->eth.type == FUNC7(0)))
		return -ENOMEM;

	FUNC22(skb);
	FUNC3(skb, skb->data - FUNC19(skb));

	/* Network layer. */
	if (key->eth.type == FUNC7(ETH_P_IP)) {
		struct iphdr *nh;
		__be16 offset;

		key_len = FUNC1(ipv4.addr);

		error = FUNC5(skb);
		if (FUNC28(error)) {
			if (error == -EINVAL) {
				skb->transport_header = skb->network_header;
				error = 0;
			}
			goto out;
		}

		nh = FUNC11(skb);
		key->ipv4.addr.src = nh->saddr;
		key->ipv4.addr.dst = nh->daddr;

		key->ip.proto = nh->protocol;
		key->ip.tos = nh->tos;
		key->ip.ttl = nh->ttl;

		offset = nh->frag_off & FUNC7(IP_OFFSET);
		if (offset) {
			key->ip.frag = OVS_FRAG_TYPE_LATER;
			goto out;
		}
		if (nh->frag_off & FUNC7(IP_MF) ||
			 FUNC23(skb)->gso_type & SKB_GSO_UDP)
			key->ip.frag = OVS_FRAG_TYPE_FIRST;

		/* Transport layer. */
		if (key->ip.proto == IPPROTO_TCP) {
			key_len = FUNC1(ipv4.tp);
			if (FUNC25(skb)) {
				struct tcphdr *tcp = FUNC24(skb);
				key->ipv4.tp.src = tcp->source;
				key->ipv4.tp.dst = tcp->dest;
			}
		} else if (key->ip.proto == IPPROTO_UDP) {
			key_len = FUNC1(ipv4.tp);
			if (FUNC27(skb)) {
				struct udphdr *udp = FUNC26(skb);
				key->ipv4.tp.src = udp->source;
				key->ipv4.tp.dst = udp->dest;
			}
		} else if (key->ip.proto == IPPROTO_ICMP) {
			key_len = FUNC1(ipv4.tp);
			if (FUNC10(skb)) {
				struct icmphdr *icmp = FUNC9(skb);
				/* The ICMP type and code fields use the 16-bit
				 * transport port fields, so we need to store
				 * them in 16-bit network byte order. */
				key->ipv4.tp.src = FUNC7(icmp->type);
				key->ipv4.tp.dst = FUNC7(icmp->code);
			}
		}

	} else if ((key->eth.type == FUNC7(ETH_P_ARP) ||
		   key->eth.type == FUNC7(ETH_P_RARP)) && FUNC4(skb)) {
		struct arp_eth_header *arp;

		arp = (struct arp_eth_header *)FUNC20(skb);

		if (arp->ar_hrd == FUNC7(ARPHRD_ETHER)
				&& arp->ar_pro == FUNC7(ETH_P_IP)
				&& arp->ar_hln == ETH_ALEN
				&& arp->ar_pln == 4) {

			/* We only match on the lower 8 bits of the opcode. */
			if (FUNC14(arp->ar_op) <= 0xff)
				key->ip.proto = FUNC14(arp->ar_op);
			FUNC12(&key->ipv4.addr.src, arp->ar_sip, sizeof(key->ipv4.addr.src));
			FUNC12(&key->ipv4.addr.dst, arp->ar_tip, sizeof(key->ipv4.addr.dst));
			FUNC12(key->ipv4.arp.sha, arp->ar_sha, ETH_ALEN);
			FUNC12(key->ipv4.arp.tha, arp->ar_tha, ETH_ALEN);
			key_len = FUNC1(ipv4.arp);
		}
	} else if (key->eth.type == FUNC7(ETH_P_IPV6)) {
		int nh_len;             /* IPv6 Header + Extensions */

		nh_len = FUNC17(skb, key, &key_len);
		if (FUNC28(nh_len < 0)) {
			if (nh_len == -EINVAL)
				skb->transport_header = skb->network_header;
			else
				error = nh_len;
			goto out;
		}

		if (key->ip.frag == OVS_FRAG_TYPE_LATER)
			goto out;
		if (FUNC23(skb)->gso_type & SKB_GSO_UDP)
			key->ip.frag = OVS_FRAG_TYPE_FIRST;

		/* Transport layer. */
		if (key->ip.proto == NEXTHDR_TCP) {
			key_len = FUNC1(ipv6.tp);
			if (FUNC25(skb)) {
				struct tcphdr *tcp = FUNC24(skb);
				key->ipv6.tp.src = tcp->source;
				key->ipv6.tp.dst = tcp->dest;
			}
		} else if (key->ip.proto == NEXTHDR_UDP) {
			key_len = FUNC1(ipv6.tp);
			if (FUNC27(skb)) {
				struct udphdr *udp = FUNC26(skb);
				key->ipv6.tp.src = udp->source;
				key->ipv6.tp.dst = udp->dest;
			}
		} else if (key->ip.proto == NEXTHDR_ICMP) {
			key_len = FUNC1(ipv6.tp);
			if (FUNC8(skb)) {
				error = FUNC16(skb, key, &key_len, nh_len);
				if (error < 0)
					goto out;
			}
		}
	}

out:
	*key_lenp = key_len;
	return error;
}