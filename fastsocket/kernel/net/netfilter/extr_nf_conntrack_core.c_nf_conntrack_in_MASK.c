#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int /*<<< orphan*/ * nfct; } ;
struct nf_conntrack_l4proto {int (* error ) (struct net*,struct sk_buff*,unsigned int,int*,int /*<<< orphan*/ ,unsigned int) ;int (* packet ) (struct nf_conn*,struct sk_buff*,unsigned int,int,int /*<<< orphan*/ ,unsigned int) ;} ;
struct nf_conntrack_l3proto {int (* get_l4proto ) (struct sk_buff*,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ;} ;
struct nf_conn {int /*<<< orphan*/  status; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_STATUS ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 scalar_t__ FUNC0 (struct nf_conn*) ; 
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 unsigned int NF_DROP ; 
 struct nf_conntrack_l3proto* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drop ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  ignore ; 
 int /*<<< orphan*/  invalid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct nf_conn* FUNC8 (struct net*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_l3proto*,struct nf_conntrack_l4proto*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct net*,struct sk_buff*,unsigned int,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC12 (struct nf_conn*,struct sk_buff*,unsigned int,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned int
FUNC14(struct net *net, u_int8_t pf, unsigned int hooknum,
		struct sk_buff *skb)
{
	struct nf_conn *ct;
	enum ip_conntrack_info ctinfo;
	struct nf_conntrack_l3proto *l3proto;
	struct nf_conntrack_l4proto *l4proto;
	unsigned int dataoff;
	u_int8_t protonum;
	int set_reply = 0;
	int ret;

	/* Previously seen (loopback or untracked)?  Ignore. */
	if (skb->nfct) {
		FUNC2(net, ignore);
		return NF_ACCEPT;
	}

	/* rcu_read_lock()ed by nf_hook_slow */
	l3proto = FUNC3(pf);
	ret = l3proto->get_l4proto(skb, FUNC9(skb),
				   &dataoff, &protonum);
	if (ret <= 0) {
		FUNC7("not prepared to track yet or error occured\n");
		FUNC2(net, error);
		FUNC2(net, invalid);
		return -ret;
	}

	l4proto = FUNC4(pf, protonum);

	/* It may be an special packet, error, unclean...
	 * inverse of the return code tells to the netfilter
	 * core what to do with the packet. */
	if (l4proto->error != NULL) {
		ret = l4proto->error(net, skb, dataoff, &ctinfo, pf, hooknum);
		if (ret <= 0) {
			FUNC2(net, error);
			FUNC2(net, invalid);
			return -ret;
		}
		/* ICMP[v6] protocol trackers may assign one conntrack. */
		if (skb->nfct)
			return ret;
	}

	ct = FUNC8(net, skb, dataoff, pf, protonum,
			       l3proto, l4proto, &set_reply, &ctinfo);
	if (!ct) {
		/* Not valid part of a connection */
		FUNC2(net, invalid);
		return NF_ACCEPT;
	}

	if (FUNC0(ct)) {
		/* Too stressed to deal. */
		FUNC2(net, drop);
		return NF_DROP;
	}

	FUNC1(skb->nfct);

	ret = l4proto->packet(ct, skb, dataoff, ctinfo, pf, hooknum);
	if (ret <= 0) {
		/* Invalid: inverse of the return code tells
		 * the netfilter core what to do */
		FUNC7("nf_conntrack_in: Can't track with proto module\n");
		FUNC6(skb->nfct);
		skb->nfct = NULL;
		FUNC2(net, invalid);
		if (ret == -NF_DROP)
			FUNC2(net, drop);
		return -ret;
	}

	if (set_reply && !FUNC13(IPS_SEEN_REPLY_BIT, &ct->status))
		FUNC5(IPCT_STATUS, ct);

	return ret;
}