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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_tlv_tnl_enc_lim {int encap_limit; } ;
struct TYPE_2__ {scalar_t__ proto; int flags; int encap_limit; } ;
struct ip6_tnl {TYPE_1__ parms; int /*<<< orphan*/  fl; } ;
struct flowi {int fl6_flowlabel; scalar_t__ proto; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  size_t __u32 ;
typedef  size_t __u16 ;
typedef  int __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 int /*<<< orphan*/  ICMPV6_PARAMPROB ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int IP6_TNL_F_IGN_ENCAP_LIMIT ; 
 int IP6_TNL_F_USE_ORIG_FLOWLABEL ; 
 int IP6_TNL_F_USE_ORIG_TCLASS ; 
 scalar_t__ IPPROTO_IPV6 ; 
 int IPV6_FLOWLABEL_MASK ; 
 int IPV6_TCLASS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct net_device*) ; 
 scalar_t__ FUNC1 (struct ip6_tnl*,struct ipv6hdr*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,struct flowi*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi*,int /*<<< orphan*/ *,int) ; 
 struct ip6_tnl* FUNC7 (struct net_device*) ; 
 size_t FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static inline int
FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct ip6_tnl *t = FUNC7(dev);
	struct ipv6hdr *ipv6h = FUNC5(skb);
	int encap_limit = -1;
	__u16 offset;
	struct flowi fl;
	__u8 dsfield;
	__u32 mtu;
	int err;

	if ((t->parms.proto != IPPROTO_IPV6 && t->parms.proto != 0) ||
	    !FUNC3(t) || FUNC1(t, ipv6h))
		return -1;

	offset = FUNC8(skb, FUNC9(skb));
	if (offset > 0) {
		struct ipv6_tlv_tnl_enc_lim *tel;
		tel = (struct ipv6_tlv_tnl_enc_lim *)&FUNC9(skb)[offset];
		if (tel->encap_limit == 0) {
			FUNC0(skb, ICMPV6_PARAMPROB,
				    ICMPV6_HDR_FIELD, offset + 2, skb->dev);
			return -1;
		}
		encap_limit = tel->encap_limit - 1;
	} else if (!(t->parms.flags & IP6_TNL_F_IGN_ENCAP_LIMIT))
		encap_limit = t->parms.encap_limit;

	FUNC6(&fl, &t->fl, sizeof (fl));
	fl.proto = IPPROTO_IPV6;

	dsfield = FUNC4(ipv6h);
	if ((t->parms.flags & IP6_TNL_F_USE_ORIG_TCLASS))
		fl.fl6_flowlabel |= (*(__be32 *) ipv6h & IPV6_TCLASS_MASK);
	if ((t->parms.flags & IP6_TNL_F_USE_ORIG_FLOWLABEL))
		fl.fl6_flowlabel |= (*(__be32 *) ipv6h & IPV6_FLOWLABEL_MASK);

	err = FUNC2(skb, dev, dsfield, &fl, encap_limit, &mtu);
	if (err != 0) {
		if (err == -EMSGSIZE)
			FUNC0(skb, ICMPV6_PKT_TOOBIG, 0, mtu, dev);
		return -1;
	}

	return 0;
}