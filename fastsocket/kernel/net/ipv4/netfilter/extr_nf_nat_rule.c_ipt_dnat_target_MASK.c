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
struct xt_target_param {scalar_t__ hooknum; struct nf_nat_multi_range_compat* targinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_nat_multi_range_compat {int /*<<< orphan*/ * range; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int IP_CT_NEW ; 
 int IP_CT_RELATED ; 
 int /*<<< orphan*/  IP_NAT_MANIP_DST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NF_INET_LOCAL_OUT ; 
 scalar_t__ NF_INET_PRE_ROUTING ; 
 struct nf_conn* FUNC1 (struct sk_buff*,int*) ; 
 unsigned int FUNC2 (struct nf_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3(struct sk_buff *skb, const struct xt_target_param *par)
{
	struct nf_conn *ct;
	enum ip_conntrack_info ctinfo;
	const struct nf_nat_multi_range_compat *mr = par->targinfo;

	FUNC0(par->hooknum == NF_INET_PRE_ROUTING ||
		     par->hooknum == NF_INET_LOCAL_OUT);

	ct = FUNC1(skb, &ctinfo);

	/* Connection must be valid and new. */
	FUNC0(ct && (ctinfo == IP_CT_NEW || ctinfo == IP_CT_RELATED));

	return FUNC2(ct, &mr->range[0], IP_NAT_MANIP_DST);
}