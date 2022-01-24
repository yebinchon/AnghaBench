#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_11__ {scalar_t__* metrics; } ;
struct TYPE_10__ {TYPE_4__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_3__ u; int /*<<< orphan*/  rt6i_nexthop; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip6_rt_mtu_expires; } ;
struct TYPE_9__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ IPV6_MIN_MTU ; 
 int RTAX_FEATURES ; 
 scalar_t__ RTAX_FEATURE_ALLFRAG ; 
 int RTAX_MTU ; 
 int RTF_CACHE ; 
 int RTF_DYNAMIC ; 
 int RTF_EXPIRES ; 
 int RTF_MODIFIED ; 
 int RTF_NONEXTHOP ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt6_info*) ; 
 struct rt6_info* FUNC6 (struct rt6_info*,struct in6_addr*) ; 
 struct rt6_info* FUNC7 (struct rt6_info*,struct in6_addr*,struct in6_addr*) ; 
 struct rt6_info* FUNC8 (struct net*,struct in6_addr*,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct in6_addr *daddr, struct in6_addr *saddr,
			struct net_device *dev, u32 pmtu)
{
	struct rt6_info *rt, *nrt;
	struct net *net = FUNC0(dev);
	int allfrag = 0;

	rt = FUNC8(net, daddr, saddr, dev->ifindex, 0);
	if (rt == NULL)
		return;

	if (pmtu >= FUNC2(&rt->u.dst))
		goto out;

	if (pmtu < IPV6_MIN_MTU) {
		/*
		 * According to RFC2460, PMTU is set to the IPv6 Minimum Link
		 * MTU (1280) and a fragment header should always be included
		 * after a node receiving Too Big message reporting PMTU is
		 * less than the IPv6 Minimum Link MTU.
		 */
		pmtu = IPV6_MIN_MTU;
		allfrag = 1;
	}

	/* New mtu received -> path was valid.
	   They are sent only in response to data packets,
	   so that this nexthop apparently is reachable. --ANK
	 */
	FUNC1(&rt->u.dst);

	/* Host route. If it is static, it would be better
	   not to override it, but add new one, so that
	   when cache entry will expire old pmtu
	   would return automatically.
	 */
	if (rt->rt6i_flags & RTF_CACHE) {
		rt->u.dst.metrics[RTAX_MTU-1] = pmtu;
		if (allfrag)
			rt->u.dst.metrics[RTAX_FEATURES-1] |= RTAX_FEATURE_ALLFRAG;
		FUNC4(&rt->u.dst, net->ipv6.sysctl.ip6_rt_mtu_expires);
		rt->rt6i_flags |= RTF_MODIFIED|RTF_EXPIRES;
		goto out;
	}

	/* Network route.
	   Two cases are possible:
	   1. It is connected route. Action: COW
	   2. It is gatewayed route or NONEXTHOP route. Action: clone it.
	 */
	if (!rt->rt6i_nexthop && !(rt->rt6i_flags & RTF_NONEXTHOP))
		nrt = FUNC7(rt, daddr, saddr);
	else
		nrt = FUNC6(rt, daddr);

	if (nrt) {
		nrt->u.dst.metrics[RTAX_MTU-1] = pmtu;
		if (allfrag)
			nrt->u.dst.metrics[RTAX_FEATURES-1] |= RTAX_FEATURE_ALLFRAG;

		/* According to RFC 1981, detecting PMTU increase shouldn't be
		 * happened within 5 mins, the recommended timer is 10 mins.
		 * Here this route expiration time is set to ip6_rt_mtu_expires
		 * which is 10 mins. After 10 mins the decreased pmtu is expired
		 * and detecting PMTU increase will be automatically happened.
		 */
		FUNC4(&nrt->u.dst, net->ipv6.sysctl.ip6_rt_mtu_expires);
		nrt->rt6i_flags |= RTF_DYNAMIC|RTF_EXPIRES;

		FUNC5(nrt);
	}
out:
	FUNC3(&rt->u.dst);
}