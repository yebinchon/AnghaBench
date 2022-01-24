#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int nfctinfo; int /*<<< orphan*/ * nfct; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct icmp6hdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int /*<<< orphan*/  ct_general; } ;

/* Variables and functions */
 scalar_t__ IP_CT_DIR_REPLY ; 
 scalar_t__ IP_CT_IS_REPLY ; 
 int IP_CT_RELATED ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  PF_INET6 ; 
 struct nf_conntrack_l4proto* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  nf_conntrack_l3proto_ipv6 ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ *,struct nf_conntrack_l4proto const*) ; 
 TYPE_2__* FUNC6 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC9(struct net *net,
		     struct sk_buff *skb,
		     unsigned int icmp6off,
		     enum ip_conntrack_info *ctinfo,
		     unsigned int hooknum)
{
	struct nf_conntrack_tuple intuple, origtuple;
	const struct nf_conntrack_tuple_hash *h;
	const struct nf_conntrack_l4proto *inproto;

	FUNC0(skb->nfct == NULL);

	/* Are they talking about one of our connections? */
	if (!FUNC4(skb,
			       FUNC8(skb)
				+ sizeof(struct ipv6hdr)
				+ sizeof(struct icmp6hdr),
			       PF_INET6, &origtuple)) {
		FUNC7("icmpv6_error: Can't get tuple\n");
		return -NF_ACCEPT;
	}

	/* rcu_read_lock()ed by nf_hook_slow */
	inproto = FUNC2(PF_INET6, origtuple.dst.protonum);

	/* Ordinarily, we'd expect the inverted tupleproto, but it's
	   been preserved inside the ICMP. */
	if (!FUNC5(&intuple, &origtuple,
				&nf_conntrack_l3proto_ipv6, inproto)) {
		FUNC7("icmpv6_error: Can't invert tuple\n");
		return -NF_ACCEPT;
	}

	*ctinfo = IP_CT_RELATED;

	h = FUNC3(net, &intuple);
	if (!h) {
		FUNC7("icmpv6_error: no match\n");
		return -NF_ACCEPT;
	} else {
		if (FUNC1(h) == IP_CT_DIR_REPLY)
			*ctinfo += IP_CT_IS_REPLY;
	}

	/* Update skb to refer to this connection */
	skb->nfct = &FUNC6(h)->ct_general;
	skb->nfctinfo = *ctinfo;
	return NF_ACCEPT;
}