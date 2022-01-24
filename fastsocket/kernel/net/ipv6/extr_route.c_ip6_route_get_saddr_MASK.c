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
struct TYPE_2__ {int /*<<< orphan*/  addr; scalar_t__ plen; } ;
struct rt6_info {TYPE_1__ rt6i_prefsrc; } ;
struct net {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/ * dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct net*,int /*<<< orphan*/ *,struct in6_addr*,unsigned int,struct in6_addr*) ; 

int FUNC3(struct net *net,
			struct rt6_info *rt,
			struct in6_addr *daddr,
			unsigned int prefs,
			struct in6_addr *saddr)
{
	struct inet6_dev *idev = FUNC0((struct dst_entry*)rt);
	int err = 0;
	if (rt->rt6i_prefsrc.plen)
		FUNC1(saddr, &rt->rt6i_prefsrc.addr);
	else
		err = FUNC2(net, idev ? idev->dev : NULL,
					 daddr, prefs, saddr);
	return err;
}