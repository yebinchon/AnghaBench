#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int ip_summed; int /*<<< orphan*/  csum; } ;
struct sec_path {int len; TYPE_4__** xvec; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct TYPE_11__ {scalar_t__ sysctl_icmp_echo_ignore_broadcasts; } ;
struct net {TYPE_5__ ipv4; } ;
struct iphdr {int dummy; } ;
struct icmphdr {size_t type; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* handler ) (struct sk_buff*) ;} ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ props; } ;

/* Variables and functions */
#define  CHECKSUM_COMPLETE 129 
#define  CHECKSUM_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct net*,size_t) ; 
 size_t ICMP_ADDRESS ; 
 size_t ICMP_ADDRESSREPLY ; 
 size_t ICMP_ECHO ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
 int /*<<< orphan*/  ICMP_MIB_INMSGS ; 
 size_t ICMP_TIMESTAMP ; 
 size_t NR_ICMP_TYPES ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int XFRM_STATE_ICMP ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 struct icmphdr* FUNC5 (struct sk_buff*) ; 
 TYPE_6__* icmp_pointers ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 
 struct sec_path* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC16(struct sk_buff *skb)
{
	struct icmphdr *icmph;
	struct rtable *rt = FUNC10(skb);
	struct net *net = FUNC4(rt->u.dst.dev);

	if (!FUNC14(NULL, XFRM_POLICY_IN, skb)) {
		struct sec_path *sp = FUNC11(skb);
		int nh;

		if (!(sp && sp->xvec[sp->len - 1]->props.flags &
				 XFRM_STATE_ICMP))
			goto drop;

		if (!FUNC7(skb, sizeof(*icmph) + sizeof(struct iphdr)))
			goto drop;

		nh = FUNC9(skb);
		FUNC12(skb, sizeof(*icmph));

		if (!FUNC15(NULL, XFRM_POLICY_IN, skb))
			goto drop;

		FUNC12(skb, nh);
	}

	FUNC1(net, ICMP_MIB_INMSGS);

	switch (skb->ip_summed) {
	case CHECKSUM_COMPLETE:
		if (!FUNC3(skb->csum))
			break;
		/* fall through */
	case CHECKSUM_NONE:
		skb->csum = 0;
		if (FUNC2(skb))
			goto error;
	}

	if (!FUNC8(skb, sizeof(*icmph)))
		goto error;

	icmph = FUNC5(skb);

	FUNC0(net, icmph->type);
	/*
	 *	18 is the highest 'known' ICMP type. Anything else is a mystery
	 *
	 *	RFC 1122: 3.2.2  Unknown ICMP messages types MUST be silently
	 *		  discarded.
	 */
	if (icmph->type > NR_ICMP_TYPES)
		goto error;


	/*
	 *	Parse the ICMP message
	 */

	if (rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST)) {
		/*
		 *	RFC 1122: 3.2.2.6 An ICMP_ECHO to broadcast MAY be
		 *	  silently ignored (we let user decide with a sysctl).
		 *	RFC 1122: 3.2.2.8 An ICMP_TIMESTAMP MAY be silently
		 *	  discarded if to broadcast/multicast.
		 */
		if ((icmph->type == ICMP_ECHO ||
		     icmph->type == ICMP_TIMESTAMP) &&
		    net->ipv4.sysctl_icmp_echo_ignore_broadcasts) {
			goto error;
		}
		if (icmph->type != ICMP_ECHO &&
		    icmph->type != ICMP_TIMESTAMP &&
		    icmph->type != ICMP_ADDRESS &&
		    icmph->type != ICMP_ADDRESSREPLY) {
			goto error;
		}
	}

	icmp_pointers[icmph->type].handler(skb);

drop:
	FUNC6(skb);
	return 0;
error:
	FUNC1(net, ICMP_MIB_INERRORS);
	goto drop;
}