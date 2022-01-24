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
typedef  int /*<<< orphan*/  u_int16_t ;
struct sk_buff {scalar_t__ nfctinfo; scalar_t__ ip_summed; scalar_t__ len; scalar_t__ data; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conn {int status; TYPE_1__* tuplehash; } ;
struct iphdr {int ihl; int /*<<< orphan*/  protocol; } ;
struct icmphdr {scalar_t__ type; scalar_t__ checksum; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ ICMP_REDIRECT ; 
 unsigned long IPS_DST_NAT ; 
 int IPS_NAT_DONE_MASK ; 
 int IPS_NAT_MASK ; 
 unsigned long IPS_SRC_NAT ; 
 int IP_CT_DIR_ORIGINAL ; 
 int IP_CT_DIR_REPLY ; 
 scalar_t__ IP_CT_IS_REPLY ; 
 scalar_t__ IP_CT_RELATED ; 
 int IP_NAT_MANIP_SRC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PF_INET ; 
 struct nf_conntrack_l4proto* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  l3proto ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int,struct nf_conntrack_tuple*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_tuple*,int /*<<< orphan*/ ,struct nf_conntrack_l4proto const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct sk_buff*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 

int FUNC13(struct nf_conn *ct,
				  enum ip_conntrack_info ctinfo,
				  unsigned int hooknum,
				  struct sk_buff *skb)
{
	struct {
		struct icmphdr icmp;
		struct iphdr ip;
	} *inside;
	const struct nf_conntrack_l4proto *l4proto;
	struct nf_conntrack_tuple inner, target;
	int hdrlen = FUNC5(skb);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	unsigned long statusbit;
	enum nf_nat_manip_type manip = FUNC1(hooknum);

	if (!FUNC12(skb, hdrlen + sizeof(*inside)))
		return 0;

	inside = (void *)skb->data + FUNC5(skb);

	/* We're actually going to mangle it beyond trivial checksum
	   adjustment, so make sure the current checksum is correct. */
	if (FUNC9(skb, hooknum, hdrlen, 0))
		return 0;

	/* Must be RELATED */
	FUNC2(skb->nfctinfo == IP_CT_RELATED ||
		     skb->nfctinfo == IP_CT_RELATED+IP_CT_IS_REPLY);

	/* Redirects on non-null nats must be dropped, else they'll
	   start talking to each other without our translation, and be
	   confused... --RR */
	if (inside->icmp.type == ICMP_REDIRECT) {
		/* If NAT isn't finished, assume it and drop. */
		if ((ct->status & IPS_NAT_DONE_MASK) != IPS_NAT_DONE_MASK)
			return 0;

		if (ct->status & IPS_NAT_MASK)
			return 0;
	}

	FUNC10("icmp_reply_translation: translating error %p manip %u "
		 "dir %s\n", skb, manip,
		 dir == IP_CT_DIR_ORIGINAL ? "ORIG" : "REPLY");

	/* rcu_read_lock()ed by nf_hook_slow */
	l4proto = FUNC3(PF_INET, inside->ip.protocol);

	if (!FUNC7(skb,
			     FUNC5(skb) + sizeof(struct icmphdr),
			     (FUNC5(skb) +
			      sizeof(struct icmphdr) + inside->ip.ihl * 4),
			     (u_int16_t)AF_INET,
			     inside->ip.protocol,
			     &inner, l3proto, l4proto))
		return 0;

	/* Change inner back to look like incoming packet.  We do the
	   opposite manip on this hook to normal, because it might not
	   pass all hooks (locally-generated ICMP).  Consider incoming
	   packet: PREROUTING (DST manip), routing produces ICMP, goes
	   through POSTROUTING (which must correct the DST manip). */
	if (!FUNC6(inside->ip.protocol, skb,
		       FUNC5(skb) + sizeof(inside->icmp),
		       &ct->tuplehash[!dir].tuple,
		       !manip))
		return 0;

	if (skb->ip_summed != CHECKSUM_PARTIAL) {
		/* Reloading "inside" here since manip_pkt inner. */
		inside = (void *)skb->data + FUNC5(skb);
		inside->icmp.checksum = 0;
		inside->icmp.checksum =
			FUNC4(FUNC11(skb, hdrlen,
					       skb->len - hdrlen, 0));
	}

	/* Change outer to look the reply to an incoming packet
	 * (proto 0 means don't invert per-proto part). */
	if (manip == IP_NAT_MANIP_SRC)
		statusbit = IPS_SRC_NAT;
	else
		statusbit = IPS_DST_NAT;

	/* Invert if this is reply dir. */
	if (dir == IP_CT_DIR_REPLY)
		statusbit ^= IPS_NAT_MASK;

	if (ct->status & statusbit) {
		FUNC8(&target, &ct->tuplehash[!dir].tuple);
		if (!FUNC6(0, skb, 0, &target, manip))
			return 0;
	}

	return 1;
}