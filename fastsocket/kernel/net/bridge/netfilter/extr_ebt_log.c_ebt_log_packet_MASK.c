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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {unsigned int logflags; scalar_t__ level; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
struct nf_loginfo {scalar_t__ type; TYPE_2__ u; } ;
struct net_device {char* name; } ;
struct ipv6hdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  mac_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  priority; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct iphdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  mac_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  priority; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct arppayload {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  mac_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  priority; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct arphdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  mac_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  priority; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
typedef  int /*<<< orphan*/  _iph ;
typedef  int /*<<< orphan*/  _arpp ;
typedef  int /*<<< orphan*/  _arph ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {scalar_t__ h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 unsigned int EBT_LOG_ARP ; 
 unsigned int EBT_LOG_IP ; 
 unsigned int EBT_LOG_IP6 ; 
 scalar_t__ ETH_ALEN ; 
 int ETH_P_ARP ; 
 int ETH_P_IP ; 
 int ETH_P_IPV6 ; 
 int ETH_P_RARP ; 
 unsigned int NF_LOG_MASK ; 
 scalar_t__ NF_LOG_TYPE_LOG ; 
 int /*<<< orphan*/  ebt_log_lock ; 
 TYPE_3__* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff const*,int,int,struct ipv6hdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(u_int8_t pf, unsigned int hooknum,
   const struct sk_buff *skb, const struct net_device *in,
   const struct net_device *out, const struct nf_loginfo *loginfo,
   const char *prefix)
{
	unsigned int bitmask;

	FUNC7(&ebt_log_lock);
	FUNC5("<%c>%s IN=%s OUT=%s MAC source = %pM MAC dest = %pM proto = 0x%04x",
	       '0' + loginfo->u.log.level, prefix,
	       in ? in->name : "", out ? out->name : "",
	       FUNC0(skb)->h_source, FUNC0(skb)->h_dest,
	       FUNC3(FUNC0(skb)->h_proto));

	if (loginfo->type == NF_LOG_TYPE_LOG)
		bitmask = loginfo->u.log.logflags;
	else
		bitmask = NF_LOG_MASK;

	if ((bitmask & EBT_LOG_IP) && FUNC0(skb)->h_proto ==
	   FUNC1(ETH_P_IP)){
		const struct iphdr *ih;
		struct iphdr _iph;

		ih = FUNC6(skb, 0, sizeof(_iph), &_iph);
		if (ih == NULL) {
			FUNC5(" INCOMPLETE IP header");
			goto out;
		}
		FUNC5(" IP SRC=%pI4 IP DST=%pI4, IP tos=0x%02X, IP proto=%d",
		       &ih->saddr, &ih->daddr, ih->tos, ih->protocol);
		FUNC4(skb, ih->protocol, ih->ihl*4);
		goto out;
	}

#if defined(CONFIG_BRIDGE_EBT_IP6) || defined(CONFIG_BRIDGE_EBT_IP6_MODULE)
	if ((bitmask & EBT_LOG_IP6) && eth_hdr(skb)->h_proto ==
	   htons(ETH_P_IPV6)) {
		const struct ipv6hdr *ih;
		struct ipv6hdr _iph;
		uint8_t nexthdr;
		int offset_ph;

		ih = skb_header_pointer(skb, 0, sizeof(_iph), &_iph);
		if (ih == NULL) {
			printk(" INCOMPLETE IPv6 header");
			goto out;
		}
		printk(" IPv6 SRC=%pI6 IPv6 DST=%pI6, IPv6 priority=0x%01X, Next Header=%d",
		       &ih->saddr, &ih->daddr, ih->priority, ih->nexthdr);
		nexthdr = ih->nexthdr;
		offset_ph = ipv6_skip_exthdr(skb, sizeof(_iph), &nexthdr);
		if (offset_ph == -1)
			goto out;
		print_ports(skb, nexthdr, offset_ph);
		goto out;
	}
#endif

	if ((bitmask & EBT_LOG_ARP) &&
	    ((FUNC0(skb)->h_proto == FUNC1(ETH_P_ARP)) ||
	     (FUNC0(skb)->h_proto == FUNC1(ETH_P_RARP)))) {
		const struct arphdr *ah;
		struct arphdr _arph;

		ah = FUNC6(skb, 0, sizeof(_arph), &_arph);
		if (ah == NULL) {
			FUNC5(" INCOMPLETE ARP header");
			goto out;
		}
		FUNC5(" ARP HTYPE=%d, PTYPE=0x%04x, OPCODE=%d",
		       FUNC3(ah->ar_hrd), FUNC3(ah->ar_pro),
		       FUNC3(ah->ar_op));

		/* If it's for Ethernet and the lengths are OK,
		 * then log the ARP payload */
		if (ah->ar_hrd == FUNC1(1) &&
		    ah->ar_hln == ETH_ALEN &&
		    ah->ar_pln == sizeof(__be32)) {
			const struct arppayload *ap;
			struct arppayload _arpp;

			ap = FUNC6(skb, sizeof(_arph),
						sizeof(_arpp), &_arpp);
			if (ap == NULL) {
				FUNC5(" INCOMPLETE ARP payload");
				goto out;
			}
			FUNC5(" ARP MAC SRC=%pM ARP IP SRC=%pI4 ARP MAC DST=%pM ARP IP DST=%pI4",
					ap->mac_src, ap->ip_src, ap->mac_dst, ap->ip_dst);
		}
	}
out:
	FUNC5("\n");
	FUNC8(&ebt_log_lock);

}