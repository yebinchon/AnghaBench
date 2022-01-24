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
struct net {int dummy; } ;
struct ip6_tnl_net {struct ip6_tnl** tnls_wc; struct ip6_tnl** tnls_r_l; } ;
struct TYPE_3__ {int /*<<< orphan*/  raddr; int /*<<< orphan*/  laddr; } ;
struct ip6_tnl {TYPE_2__* dev; TYPE_1__ parms; struct ip6_tnl* next; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct in6_addr*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 scalar_t__ FUNC1 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 struct ip6_tnl_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ip6_tnl *
FUNC3(struct net *net, struct in6_addr *remote, struct in6_addr *local)
{
	unsigned h0 = FUNC0(remote);
	unsigned h1 = FUNC0(local);
	struct ip6_tnl *t;
	struct ip6_tnl_net *ip6n = FUNC2(net, ip6_tnl_net_id);

	for (t = ip6n->tnls_r_l[h0 ^ h1]; t; t = t->next) {
		if (FUNC1(local, &t->parms.laddr) &&
		    FUNC1(remote, &t->parms.raddr) &&
		    (t->dev->flags & IFF_UP))
			return t;
	}
	if ((t = ip6n->tnls_wc[0]) != NULL && (t->dev->flags & IFF_UP))
		return t;

	return NULL;
}