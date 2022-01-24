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
struct sock {int dummy; } ;
struct ipv6_pinfo {struct ipv6_mc_socklist* ipv6_mc_list; } ;
struct ipv6_mc_socklist {scalar_t__ sfmode; int /*<<< orphan*/  sflock; struct ip6_sf_socklist* sflist; int /*<<< orphan*/  addr; struct ipv6_mc_socklist* next; } ;
struct ip6_sf_socklist {int sl_count; int /*<<< orphan*/ * sl_addr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ MCAST_EXCLUDE ; 
 scalar_t__ MCAST_INCLUDE ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  ipv6_sk_mc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct sock *sk, const struct in6_addr *mc_addr,
		   const struct in6_addr *src_addr)
{
	struct ipv6_pinfo *np = FUNC0(sk);
	struct ipv6_mc_socklist *mc;
	struct ip6_sf_socklist *psl;
	int rv = 1;

	FUNC2(&ipv6_sk_mc_lock);
	for (mc = np->ipv6_mc_list; mc; mc = mc->next) {
		if (FUNC1(&mc->addr, mc_addr))
			break;
	}
	if (!mc) {
		FUNC3(&ipv6_sk_mc_lock);
		return 1;
	}
	FUNC2(&mc->sflock);
	psl = mc->sflist;
	if (!psl) {
		rv = mc->sfmode == MCAST_EXCLUDE;
	} else {
		int i;

		for (i=0; i<psl->sl_count; i++) {
			if (FUNC1(&psl->sl_addr[i], src_addr))
				break;
		}
		if (mc->sfmode == MCAST_INCLUDE && i >= psl->sl_count)
			rv = 0;
		if (mc->sfmode == MCAST_EXCLUDE && i < psl->sl_count)
			rv = 0;
	}
	FUNC3(&mc->sflock);
	FUNC3(&ipv6_sk_mc_lock);

	return rv;
}