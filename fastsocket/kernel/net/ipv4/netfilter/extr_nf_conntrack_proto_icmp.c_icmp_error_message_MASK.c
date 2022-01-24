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
struct icmphdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int /*<<< orphan*/  ct_general; } ;

/* Variables and functions */
 scalar_t__ IP_CT_DIR_REPLY ; 
 scalar_t__ IP_CT_IS_REPLY ; 
 int IP_CT_RELATED ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  PF_INET ; 
 struct nf_conntrack_l4proto* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct nf_conntrack_tuple_hash* FUNC4 (struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  nf_conntrack_l3proto_ipv4 ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ *,struct nf_conntrack_l4proto const*) ; 
 TYPE_2__* FUNC7 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC10(struct net *net, struct sk_buff *skb,
		 enum ip_conntrack_info *ctinfo,
		 unsigned int hooknum)
{
	struct nf_conntrack_tuple innertuple, origtuple;
	const struct nf_conntrack_l4proto *innerproto;
	const struct nf_conntrack_tuple_hash *h;

	FUNC0(skb->nfct == NULL);

	/* Are they talking about one of our connections? */
	if (!FUNC5(skb,
			       FUNC9(skb) + FUNC3(skb)
						       + sizeof(struct icmphdr),
			       PF_INET, &origtuple)) {
		FUNC8("icmp_error_message: failed to get tuple\n");
		return -NF_ACCEPT;
	}

	/* rcu_read_lock()ed by nf_hook_slow */
	innerproto = FUNC2(PF_INET, origtuple.dst.protonum);

	/* Ordinarily, we'd expect the inverted tupleproto, but it's
	   been preserved inside the ICMP. */
	if (!FUNC6(&innertuple, &origtuple,
				&nf_conntrack_l3proto_ipv4, innerproto)) {
		FUNC8("icmp_error_message: no match\n");
		return -NF_ACCEPT;
	}

	*ctinfo = IP_CT_RELATED;

	h = FUNC4(net, &innertuple);
	if (!h) {
		FUNC8("icmp_error_message: no match\n");
		return -NF_ACCEPT;
	}

	if (FUNC1(h) == IP_CT_DIR_REPLY)
		*ctinfo += IP_CT_IS_REPLY;

	/* Update skb to refer to this connection */
	skb->nfct = &FUNC7(h)->ct_general;
	skb->nfctinfo = *ctinfo;
	return NF_ACCEPT;
}