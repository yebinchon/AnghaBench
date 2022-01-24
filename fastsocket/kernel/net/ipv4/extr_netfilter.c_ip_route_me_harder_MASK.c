#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_4__* sk; int /*<<< orphan*/  mark; } ;
struct dst_entry {TYPE_6__* dev; scalar_t__ error; } ;
struct TYPE_10__ {struct dst_entry dst; } ;
struct rtable {TYPE_3__ u; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; scalar_t__ saddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  tos; scalar_t__ saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_9__ {TYPE_1__ ip4_u; } ;
struct flowi {int /*<<< orphan*/  flags; int /*<<< orphan*/  mark; int /*<<< orphan*/  oif; TYPE_2__ nl_u; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __be32 ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {unsigned int hard_header_len; } ;
struct TYPE_11__ {int /*<<< orphan*/  sk_bound_dev_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FLOWI_FLAG_ANYSRC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_XFRM_TRANSFORMED ; 
 unsigned int RTN_LOCAL ; 
 unsigned int RTN_UNICAST ; 
 unsigned int RTN_UNSPEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (TYPE_6__*) ; 
 unsigned int FUNC3 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct net*,struct rtable**,struct flowi*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct dst_entry*) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,struct flowi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct net*,struct dst_entry**,struct flowi*,TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC14(struct sk_buff *skb, unsigned addr_type)
{
	struct net *net = FUNC2(FUNC8(skb)->dev);
	const struct iphdr *iph = FUNC5(skb);
	struct rtable *rt;
	struct flowi fl = {};
	__be32 saddr = iph->saddr;
	__u8 flags = skb->sk ? FUNC4(skb->sk) : 0;
	unsigned int hh_len;

	if (addr_type == RTN_UNSPEC)
		addr_type = FUNC3(net, saddr);
	if (addr_type == RTN_LOCAL || addr_type == RTN_UNICAST)
		flags |= FLOWI_FLAG_ANYSRC;
	else
		saddr = 0;

	/* some non-standard hacks like ipt_REJECT.c:send_reset() can cause
	 * packets with foreign saddr to appear on the NF_INET_LOCAL_OUT hook.
	 */
	fl.nl_u.ip4_u.daddr = iph->daddr;
	fl.nl_u.ip4_u.saddr = saddr;
	fl.nl_u.ip4_u.tos = FUNC1(iph->tos);
	fl.oif = skb->sk ? skb->sk->sk_bound_dev_if : 0;
	fl.mark = skb->mark;
	fl.flags = flags;
	if (FUNC6(net, &rt, &fl) != 0)
		return -1;

	/* Drop old route. */
	FUNC9(skb);
	FUNC10(skb, &rt->u.dst);

	if (FUNC8(skb)->error)
		return -1;

#ifdef CONFIG_XFRM
	if (!(IPCB(skb)->flags & IPSKB_XFRM_TRANSFORMED) &&
	    xfrm_decode_session(skb, &fl, AF_INET) == 0) {
		struct dst_entry *dst = skb_dst(skb);
		skb_dst_set(skb, NULL);
		if (xfrm_lookup(net, &dst, &fl, skb->sk, 0))
			return -1;
		skb_dst_set(skb, dst);
	}
#endif

	/* Change in oif may mean change in hh_len. */
	hh_len = FUNC8(skb)->dev->hard_header_len;
	if (FUNC11(skb) < hh_len &&
	    FUNC7(skb, hh_len - FUNC11(skb), 0, GFP_ATOMIC))
		return -1;

	return 0;
}