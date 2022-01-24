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
struct net {int dummy; } ;
struct ip6addrlbl_entry {int ifindex; int addrtype; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  prefix; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6addrlbl_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net*) ; 

__attribute__((used)) static int FUNC3(struct net *net,
			      struct ip6addrlbl_entry *p,
			      const struct in6_addr *addr,
			      int addrtype, int ifindex)
{
	if (!FUNC2(FUNC0(p), net))
		return 0;
	if (p->ifindex && p->ifindex != ifindex)
		return 0;
	if (p->addrtype && p->addrtype != addrtype)
		return 0;
	if (!FUNC1(addr, &p->prefix, p->prefixlen))
		return 0;
	return 1;
}