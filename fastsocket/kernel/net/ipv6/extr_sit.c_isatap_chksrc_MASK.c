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
struct sk_buff {int /*<<< orphan*/  ndisc_nodetype; } ;
struct iphdr {scalar_t__ saddr; } ;
struct ip_tunnel_prl_entry {int flags; } ;
struct ip_tunnel {int /*<<< orphan*/  dev; } ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct TYPE_2__ {struct in6_addr saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDISC_NODETYPE_DEFAULT ; 
 int /*<<< orphan*/  NDISC_NODETYPE_HOST ; 
 int /*<<< orphan*/  NDISC_NODETYPE_NODEFAULT ; 
 int PRL_DEFAULT ; 
 struct ip_tunnel_prl_entry* FUNC0 (struct ip_tunnel*,scalar_t__) ; 
 int /*<<< orphan*/  ipip6_lock ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 scalar_t__ FUNC2 (struct in6_addr*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct iphdr *iph, struct ip_tunnel *t)
{
	struct ip_tunnel_prl_entry *p;
	int ok = 1;

	FUNC4(&ipip6_lock);
	p = FUNC0(t, iph->saddr);
	if (p) {
		if (p->flags & PRL_DEFAULT)
			skb->ndisc_nodetype = NDISC_NODETYPE_DEFAULT;
		else
			skb->ndisc_nodetype = NDISC_NODETYPE_NODEFAULT;
	} else {
		struct in6_addr *addr6 = &FUNC3(skb)->saddr;
		if (FUNC1(addr6) &&
		    (addr6->s6_addr32[3] == iph->saddr) &&
		    FUNC2(addr6, t->dev))
			skb->ndisc_nodetype = NDISC_NODETYPE_HOST;
		else
			ok = 0;
	}
	FUNC5(&ipip6_lock);
	return ok;
}