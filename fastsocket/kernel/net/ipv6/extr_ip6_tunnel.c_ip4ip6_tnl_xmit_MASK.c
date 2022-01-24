#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ tos; } ;
struct TYPE_2__ {scalar_t__ proto; int flags; int encap_limit; } ;
struct ip6_tnl {TYPE_1__ parms; int /*<<< orphan*/  fl; } ;
struct flowi {int fl6_flowlabel; scalar_t__ proto; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int IP6_TNL_F_IGN_ENCAP_LIMIT ; 
 int IP6_TNL_F_USE_ORIG_TCLASS ; 
 scalar_t__ IPPROTO_IPIP ; 
 int IPV6_TCLASS_MASK ; 
 int IPV6_TCLASS_SHIFT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,struct flowi*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_tnl*) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi*,int /*<<< orphan*/ *,int) ; 
 struct ip6_tnl* FUNC7 (struct net_device*) ; 

__attribute__((used)) static inline int
FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct ip6_tnl *t = FUNC7(dev);
	struct iphdr  *iph = FUNC4(skb);
	int encap_limit = -1;
	struct flowi fl;
	__u8 dsfield;
	__u32 mtu;
	int err;

	if ((t->parms.proto != IPPROTO_IPIP && t->parms.proto != 0) ||
	    !FUNC3(t))
		return -1;

	if (!(t->parms.flags & IP6_TNL_F_IGN_ENCAP_LIMIT))
		encap_limit = t->parms.encap_limit;

	FUNC6(&fl, &t->fl, sizeof (fl));
	fl.proto = IPPROTO_IPIP;

	dsfield = FUNC5(iph);

	if ((t->parms.flags & IP6_TNL_F_USE_ORIG_TCLASS))
		fl.fl6_flowlabel |= FUNC0((__u32)iph->tos << IPV6_TCLASS_SHIFT)
					  & IPV6_TCLASS_MASK;

	err = FUNC2(skb, dev, dsfield, &fl, encap_limit, &mtu);
	if (err != 0) {
		/* XXX: send ICMP error even if DF is not set. */
		if (err == -EMSGSIZE)
			FUNC1(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
				  FUNC0(mtu));
		return -1;
	}

	return 0;
}