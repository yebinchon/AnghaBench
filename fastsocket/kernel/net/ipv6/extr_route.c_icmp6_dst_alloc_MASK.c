#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dst_entry {int* metrics; struct dst_entry* next; int /*<<< orphan*/  flags; int /*<<< orphan*/  output; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_6__ {struct dst_entry dst; } ;
struct TYPE_5__ {int plen; int /*<<< orphan*/  addr; } ;
struct rt6_info {TYPE_3__ u; TYPE_2__ rt6i_dst; struct net_device* rt6i_dev; struct neighbour* rt6i_nexthop; struct inet6_dev* rt6i_idev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip6_dst_ops; } ;
struct net {TYPE_1__ ipv6; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int IPV6_ADDR_UNICAST ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int RTAX_ADVMSS ; 
 int RTAX_HOPLIMIT ; 
 int RTAX_MTU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 struct dst_entry* icmp6_dst_gc_list ; 
 int /*<<< orphan*/  icmp6_dst_lock ; 
 struct inet6_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_dev*) ; 
 struct rt6_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_output ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int FUNC10 (struct in6_addr const*) ; 
 int FUNC11 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net_device*) ; 
 struct neighbour* FUNC13 (struct net_device*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC14 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC18(struct net_device *dev,
				  struct neighbour *neigh,
				  const struct in6_addr *addr)
{
	struct rt6_info *rt;
	struct inet6_dev *idev = FUNC6(dev);
	struct net *net = FUNC3(dev);

	if (FUNC17(idev == NULL))
		return NULL;

	rt = FUNC8(&net->ipv6.ip6_dst_ops);
	if (FUNC17(rt == NULL)) {
		FUNC7(idev);
		goto out;
	}

	FUNC2(dev);
	if (neigh)
		FUNC14(neigh);
	else {
		neigh = FUNC13(dev, addr);
		if (FUNC0(neigh))
			neigh = NULL;
	}

	rt->rt6i_dev	  = dev;
	rt->rt6i_idev     = idev;
	rt->rt6i_nexthop  = neigh;
	FUNC1(&rt->u.dst.__refcnt, 1);
	rt->u.dst.metrics[RTAX_HOPLIMIT-1] = 255;
	rt->u.dst.metrics[RTAX_MTU-1] = FUNC12(rt->rt6i_dev);
	rt->u.dst.metrics[RTAX_ADVMSS-1] = FUNC11(net, FUNC4(&rt->u.dst));
	rt->u.dst.output  = ip6_output;

#if 0	/* there's no chance to use these for ndisc */
	rt->u.dst.flags   = ipv6_addr_type(addr) & IPV6_ADDR_UNICAST
				? DST_HOST
				: 0;
	ipv6_addr_copy(&rt->rt6i_dst.addr, addr);
	rt->rt6i_dst.plen = 128;
#endif

	FUNC15(&icmp6_dst_lock);
	rt->u.dst.next = icmp6_dst_gc_list;
	icmp6_dst_gc_list = &rt->u.dst;
	FUNC16(&icmp6_dst_lock);

	FUNC5(net);

out:
	return &rt->u.dst;
}