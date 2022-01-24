#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_16__ {int /*<<< orphan*/ * tha; int /*<<< orphan*/ * sha; } ;
struct TYPE_14__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_17__ {TYPE_5__ arp; TYPE_3__ addr; } ;
struct TYPE_15__ {int proto; scalar_t__ frag; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_19__ {int tci; int type; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; } ;
struct TYPE_12__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_13__ {TYPE_1__ addr; int /*<<< orphan*/  label; } ;
struct TYPE_18__ {int in_port; void* skb_mark; void* priority; } ;
struct sw_flow_key {TYPE_6__ ipv4; TYPE_4__ ip; TYPE_8__ eth; TYPE_2__ ipv6; int /*<<< orphan*/  tun_key; TYPE_7__ phy; } ;
struct ovs_key_ipv6 {scalar_t__ ipv6_frag; int ipv6_proto; int /*<<< orphan*/  ipv6_dst; int /*<<< orphan*/  ipv6_src; int /*<<< orphan*/  ipv6_hlimit; int /*<<< orphan*/  ipv6_tclass; int /*<<< orphan*/  ipv6_label; } ;
struct ovs_key_ipv4 {scalar_t__ ipv4_frag; int ipv4_proto; int /*<<< orphan*/  ipv4_dst; int /*<<< orphan*/  ipv4_src; int /*<<< orphan*/  ipv4_ttl; int /*<<< orphan*/  ipv4_tos; } ;
struct ovs_key_ethernet {int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src; } ;
struct ovs_key_arp {int arp_op; int /*<<< orphan*/  arp_tha; int /*<<< orphan*/  arp_sha; int /*<<< orphan*/  arp_tip; int /*<<< orphan*/  arp_sip; } ;
struct nlattr {int dummy; } ;
typedef  int __be16 ;
struct TYPE_20__ {int /*<<< orphan*/  label; } ;
struct TYPE_11__ {int /*<<< orphan*/  arp; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int DP_MAX_PORTS ; 
 int EINVAL ; 
 int ETH_ALEN ; 
 int ETH_P_8021Q ; 
 int ETH_P_802_2 ; 
 int ETH_P_ARP ; 
 int ETH_P_IP ; 
 int ETH_P_IPV6 ; 
 int ETH_P_RARP ; 
 scalar_t__ OVS_FRAG_TYPE_LATER ; 
 scalar_t__ OVS_FRAG_TYPE_MAX ; 
 int OVS_KEY_ATTR_ARP ; 
 int OVS_KEY_ATTR_ENCAP ; 
 int OVS_KEY_ATTR_ETHERNET ; 
 unsigned int OVS_KEY_ATTR_ETHERTYPE ; 
 int OVS_KEY_ATTR_IN_PORT ; 
 int OVS_KEY_ATTR_IPV4 ; 
 int OVS_KEY_ATTR_IPV6 ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_MAX ; 
 int OVS_KEY_ATTR_PRIORITY ; 
 int OVS_KEY_ATTR_SKB_MARK ; 
 int OVS_KEY_ATTR_TUNNEL ; 
 int OVS_KEY_ATTR_VLAN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VLAN_TAG_PRESENT ; 
 int /*<<< orphan*/  eth ; 
 int FUNC1 (int) ; 
 TYPE_10__ ipv4 ; 
 int FUNC2 (struct sw_flow_key*,int*,struct nlattr const**,int*) ; 
 TYPE_9__ ipv6 ; 
 int FUNC3 (struct sw_flow_key*,int*,struct nlattr const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sw_flow_key*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct nlattr const*) ; 
 int FUNC7 (struct nlattr const*) ; 
 void* FUNC8 (struct nlattr const*) ; 
 scalar_t__ FUNC9 (struct nlattr const*) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct nlattr const*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct nlattr const*,struct nlattr const**,int*) ; 

int FUNC13(struct sw_flow_key *swkey, int *key_lenp,
		      const struct nlattr *attr)
{
	const struct nlattr *a[OVS_KEY_ATTR_MAX + 1];
	const struct ovs_key_ethernet *eth_key;
	int key_len;
	u32 attrs;
	int err;

	FUNC5(swkey, 0, sizeof(struct sw_flow_key));
	key_len = FUNC0(eth);

	err = FUNC12(attr, a, &attrs);
	if (err)
		return err;

	/* Metadata attributes. */
	if (attrs & (1 << OVS_KEY_ATTR_PRIORITY)) {
		swkey->phy.priority = FUNC8(a[OVS_KEY_ATTR_PRIORITY]);
		attrs &= ~(1 << OVS_KEY_ATTR_PRIORITY);
	}
	if (attrs & (1 << OVS_KEY_ATTR_IN_PORT)) {
		u32 in_port = FUNC8(a[OVS_KEY_ATTR_IN_PORT]);
		if (in_port >= DP_MAX_PORTS)
			return -EINVAL;
		swkey->phy.in_port = in_port;
		attrs &= ~(1 << OVS_KEY_ATTR_IN_PORT);
	} else {
		swkey->phy.in_port = DP_MAX_PORTS;
	}
	if (attrs & (1 << OVS_KEY_ATTR_SKB_MARK)) {
		swkey->phy.skb_mark = FUNC8(a[OVS_KEY_ATTR_SKB_MARK]);
		attrs &= ~(1 << OVS_KEY_ATTR_SKB_MARK);
	}

	if (attrs & (1 << OVS_KEY_ATTR_TUNNEL)) {
		err = FUNC11(a[OVS_KEY_ATTR_TUNNEL], &swkey->tun_key);
		if (err)
			return err;

		attrs &= ~(1 << OVS_KEY_ATTR_TUNNEL);
	}

	/* Data attributes. */
	if (!(attrs & (1 << OVS_KEY_ATTR_ETHERNET)))
		return -EINVAL;
	attrs &= ~(1 << OVS_KEY_ATTR_ETHERNET);

	eth_key = FUNC6(a[OVS_KEY_ATTR_ETHERNET]);
	FUNC4(swkey->eth.src, eth_key->eth_src, ETH_ALEN);
	FUNC4(swkey->eth.dst, eth_key->eth_dst, ETH_ALEN);

	if (attrs & (1u << OVS_KEY_ATTR_ETHERTYPE) &&
	    FUNC7(a[OVS_KEY_ATTR_ETHERTYPE]) == FUNC1(ETH_P_8021Q)) {
		const struct nlattr *encap;
		__be16 tci;

		if (attrs != ((1 << OVS_KEY_ATTR_VLAN) |
			      (1 << OVS_KEY_ATTR_ETHERTYPE) |
			      (1 << OVS_KEY_ATTR_ENCAP)))
			return -EINVAL;

		encap = a[OVS_KEY_ATTR_ENCAP];
		tci = FUNC7(a[OVS_KEY_ATTR_VLAN]);
		if (tci & FUNC1(VLAN_TAG_PRESENT)) {
			swkey->eth.tci = tci;

			err = FUNC12(encap, a, &attrs);
			if (err)
				return err;
		} else if (!tci) {
			/* Corner case for truncated 802.1Q header. */
			if (FUNC9(encap))
				return -EINVAL;

			swkey->eth.type = FUNC1(ETH_P_8021Q);
			*key_lenp = key_len;
			return 0;
		} else {
			return -EINVAL;
		}
	}

	if (attrs & (1 << OVS_KEY_ATTR_ETHERTYPE)) {
		swkey->eth.type = FUNC7(a[OVS_KEY_ATTR_ETHERTYPE]);
		if (FUNC10(swkey->eth.type) < 1536)
			return -EINVAL;
		attrs &= ~(1 << OVS_KEY_ATTR_ETHERTYPE);
	} else {
		swkey->eth.type = FUNC1(ETH_P_802_2);
	}

	if (swkey->eth.type == FUNC1(ETH_P_IP)) {
		const struct ovs_key_ipv4 *ipv4_key;

		if (!(attrs & (1 << OVS_KEY_ATTR_IPV4)))
			return -EINVAL;
		attrs &= ~(1 << OVS_KEY_ATTR_IPV4);

		key_len = FUNC0(ipv4.addr);
		ipv4_key = FUNC6(a[OVS_KEY_ATTR_IPV4]);
		if (ipv4_key->ipv4_frag > OVS_FRAG_TYPE_MAX)
			return -EINVAL;
		swkey->ip.proto = ipv4_key->ipv4_proto;
		swkey->ip.tos = ipv4_key->ipv4_tos;
		swkey->ip.ttl = ipv4_key->ipv4_ttl;
		swkey->ip.frag = ipv4_key->ipv4_frag;
		swkey->ipv4.addr.src = ipv4_key->ipv4_src;
		swkey->ipv4.addr.dst = ipv4_key->ipv4_dst;

		if (swkey->ip.frag != OVS_FRAG_TYPE_LATER) {
			err = FUNC2(swkey, &key_len, a, &attrs);
			if (err)
				return err;
		}
	} else if (swkey->eth.type == FUNC1(ETH_P_IPV6)) {
		const struct ovs_key_ipv6 *ipv6_key;

		if (!(attrs & (1 << OVS_KEY_ATTR_IPV6)))
			return -EINVAL;
		attrs &= ~(1 << OVS_KEY_ATTR_IPV6);

		key_len = FUNC0(ipv6.label);
		ipv6_key = FUNC6(a[OVS_KEY_ATTR_IPV6]);
		if (ipv6_key->ipv6_frag > OVS_FRAG_TYPE_MAX)
			return -EINVAL;
		swkey->ipv6.label = ipv6_key->ipv6_label;
		swkey->ip.proto = ipv6_key->ipv6_proto;
		swkey->ip.tos = ipv6_key->ipv6_tclass;
		swkey->ip.ttl = ipv6_key->ipv6_hlimit;
		swkey->ip.frag = ipv6_key->ipv6_frag;
		FUNC4(&swkey->ipv6.addr.src, ipv6_key->ipv6_src,
		       sizeof(swkey->ipv6.addr.src));
		FUNC4(&swkey->ipv6.addr.dst, ipv6_key->ipv6_dst,
		       sizeof(swkey->ipv6.addr.dst));

		if (swkey->ip.frag != OVS_FRAG_TYPE_LATER) {
			err = FUNC3(swkey, &key_len, a, &attrs);
			if (err)
				return err;
		}
	} else if (swkey->eth.type == FUNC1(ETH_P_ARP) ||
		   swkey->eth.type == FUNC1(ETH_P_RARP)) {
		const struct ovs_key_arp *arp_key;

		if (!(attrs & (1 << OVS_KEY_ATTR_ARP)))
			return -EINVAL;
		attrs &= ~(1 << OVS_KEY_ATTR_ARP);

		key_len = FUNC0(ipv4.arp);
		arp_key = FUNC6(a[OVS_KEY_ATTR_ARP]);
		swkey->ipv4.addr.src = arp_key->arp_sip;
		swkey->ipv4.addr.dst = arp_key->arp_tip;
		if (arp_key->arp_op & FUNC1(0xff00))
			return -EINVAL;
		swkey->ip.proto = FUNC10(arp_key->arp_op);
		FUNC4(swkey->ipv4.arp.sha, arp_key->arp_sha, ETH_ALEN);
		FUNC4(swkey->ipv4.arp.tha, arp_key->arp_tha, ETH_ALEN);
	}

	if (attrs)
		return -EINVAL;
	*key_lenp = key_len;

	return 0;
}