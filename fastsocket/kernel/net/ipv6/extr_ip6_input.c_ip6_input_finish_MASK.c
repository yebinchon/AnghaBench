#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet6_protocol {int flags; int (* handler ) (struct sk_buff*) ;} ;
struct inet6_dev {int dummy; } ;
struct TYPE_5__ {unsigned int nhoff; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_PARAMPROB ; 
 int /*<<< orphan*/  ICMPV6_UNK_NEXTHDR ; 
 int INET6_PROTO_FINAL ; 
 int INET6_PROTO_NOPOLICY ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDELIVERS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INUNKNOWNPROTOS ; 
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inet6_protos ; 
 struct inet6_dev* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*,int) ; 
 struct inet6_protocol* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_1__* FUNC16 (struct sk_buff*) ; 
 int* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC23(struct sk_buff *skb)
{
	const struct inet6_protocol *ipprot;
	unsigned int nhoff;
	int nexthdr, raw;
	u8 hash;
	struct inet6_dev *idev;
	struct net *net = FUNC2(FUNC16(skb)->dev);

	/*
	 *	Parse extension headers
	 */

	FUNC14();
resubmit:
	idev = FUNC4(FUNC16(skb));
	if (!FUNC11(skb, FUNC20(skb)))
		goto discard;
	nhoff = FUNC0(skb)->nhoff;
	nexthdr = FUNC17(skb)[nhoff];

	raw = FUNC12(skb, nexthdr);

	hash = nexthdr & (MAX_INET_PROTOS - 1);
	if ((ipprot = FUNC13(inet6_protos[hash])) != NULL) {
		int ret;

		if (ipprot->flags & INET6_PROTO_FINAL) {
			struct ipv6hdr *hdr;

			/* Free reference early: we don't need it any more,
			   and it may hold ip_conntrack module loaded
			   indefinitely. */
			FUNC10(skb);

			FUNC19(skb, FUNC17(skb),
					   FUNC18(skb));
			hdr = FUNC7(skb);
			if (FUNC5(&hdr->daddr) &&
			    !FUNC6(skb->dev, &hdr->daddr,
			    &hdr->saddr) &&
			    !FUNC8(skb, nexthdr))
				goto discard;
		}
		if (!(ipprot->flags & INET6_PROTO_NOPOLICY) &&
		    !FUNC22(NULL, XFRM_POLICY_IN, skb))
			goto discard;

		ret = ipprot->handler(skb);
		if (ret > 0)
			goto resubmit;
		else if (ret == 0)
			FUNC1(net, idev, IPSTATS_MIB_INDELIVERS);
	} else {
		if (!raw) {
			if (FUNC22(NULL, XFRM_POLICY_IN, skb)) {
				FUNC1(net, idev,
						 IPSTATS_MIB_INUNKNOWNPROTOS);
				FUNC3(skb, ICMPV6_PARAMPROB,
					    ICMPV6_UNK_NEXTHDR, nhoff,
					    skb->dev);
			}
		} else
			FUNC1(net, idev, IPSTATS_MIB_INDELIVERS);
		FUNC9(skb);
	}
	FUNC15();
	return 0;

discard:
	FUNC1(net, idev, IPSTATS_MIB_INDISCARDS);
	FUNC15();
	FUNC9(skb);
	return 0;
}