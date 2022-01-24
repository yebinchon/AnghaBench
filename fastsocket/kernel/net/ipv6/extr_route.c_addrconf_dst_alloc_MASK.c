#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* metrics; int obsolete; int /*<<< orphan*/  __refcnt; int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_4__ dst; } ;
struct TYPE_7__ {int plen; int /*<<< orphan*/  addr; } ;
struct rt6_info {int rt6i_flags; TYPE_3__ u; int /*<<< orphan*/  rt6i_table; TYPE_2__ rt6i_dst; struct neighbour* rt6i_nexthop; int /*<<< orphan*/  rt6i_gateway; int /*<<< orphan*/  rt6i_dev; struct inet6_dev* rt6i_idev; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip6_dst_ops; } ;
struct net {int /*<<< orphan*/  loopback_dev; TYPE_1__ ipv6; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  dev; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct rt6_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct neighbour*) ; 
 int /*<<< orphan*/  RT6_TABLE_LOCAL ; 
 int RTAX_ADVMSS ; 
 int RTAX_HOPLIMIT ; 
 int RTAX_MTU ; 
 int RTF_ANYCAST ; 
 int RTF_LOCAL ; 
 int RTF_NONEXTHOP ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inet6_dev*) ; 
 struct rt6_info* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_input ; 
 int /*<<< orphan*/  ip6_output ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int FUNC11 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct rt6_info *FUNC14(struct inet6_dev *idev,
				    const struct in6_addr *addr,
				    int anycast)
{
	struct net *net = FUNC4(idev->dev);
	struct rt6_info *rt = FUNC9(&net->ipv6.ip6_dst_ops);
	struct neighbour *neigh;

	if (rt == NULL)
		return FUNC0(-ENOMEM);

	FUNC3(net->loopback_dev);
	FUNC8(idev);

	rt->u.dst.flags = DST_HOST;
	rt->u.dst.input = ip6_input;
	rt->u.dst.output = ip6_output;
	rt->rt6i_dev = net->loopback_dev;
	rt->rt6i_idev = idev;
	rt->u.dst.metrics[RTAX_MTU-1] = FUNC12(rt->rt6i_dev);
	rt->u.dst.metrics[RTAX_ADVMSS-1] = FUNC11(net, FUNC6(&rt->u.dst));
	rt->u.dst.metrics[RTAX_HOPLIMIT-1] = -1;
	rt->u.dst.obsolete = -1;

	rt->rt6i_flags = RTF_UP | RTF_NONEXTHOP;
	if (anycast)
		rt->rt6i_flags |= RTF_ANYCAST;
	else
		rt->rt6i_flags |= RTF_LOCAL;
	neigh = FUNC13(rt->rt6i_dev, &rt->rt6i_gateway);
	if (FUNC1(neigh)) {
		FUNC5(&rt->u.dst);

		/* We are casting this because that is the return
		 * value type.  But an errno encoded pointer is the
		 * same regardless of the underlying pointer type,
		 * and that's what we are returning.  So this is OK.
		 */
		return (struct rt6_info *) neigh;
	}
	rt->rt6i_nexthop = neigh;

	FUNC10(&rt->rt6i_dst.addr, addr);
	rt->rt6i_dst.plen = 128;
	rt->rt6i_table = FUNC7(net, RT6_TABLE_LOCAL);

	FUNC2(&rt->u.dst.__refcnt, 1);

	return rt;
}