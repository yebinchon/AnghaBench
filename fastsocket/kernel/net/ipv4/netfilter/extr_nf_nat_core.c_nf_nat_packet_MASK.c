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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  protonum; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; } ;
struct nf_conn {unsigned long status; TYPE_1__* tuplehash; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_3__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned long IPS_DST_NAT ; 
 unsigned long IPS_NAT_MASK ; 
 unsigned long IPS_SRC_NAT ; 
 int IP_CT_DIR_REPLY ; 
 int IP_NAT_MANIP_SRC ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct nf_conntrack_tuple*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_tuple*,int /*<<< orphan*/ *) ; 

unsigned int FUNC4(struct nf_conn *ct,
			   enum ip_conntrack_info ctinfo,
			   unsigned int hooknum,
			   struct sk_buff *skb)
{
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	unsigned long statusbit;
	enum nf_nat_manip_type mtype = FUNC1(hooknum);

	if (mtype == IP_NAT_MANIP_SRC)
		statusbit = IPS_SRC_NAT;
	else
		statusbit = IPS_DST_NAT;

	/* Invert if this is reply dir. */
	if (dir == IP_CT_DIR_REPLY)
		statusbit ^= IPS_NAT_MASK;

	/* Non-atomic: these bits don't change. */
	if (ct->status & statusbit) {
		struct nf_conntrack_tuple target;

		/* We are aiming to look like inverse of other direction. */
		FUNC3(&target, &ct->tuplehash[!dir].tuple);

		if (!FUNC2(target.dst.protonum, skb, 0, &target, mtype))
			return NF_DROP;
	}
	return NF_ACCEPT;
}