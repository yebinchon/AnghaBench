#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {unsigned int mtu; } ;
struct neighbour {int dummy; } ;
struct TYPE_6__ {unsigned int* metrics; struct net_device* dev; struct neighbour* neighbour; } ;
struct TYPE_5__ {TYPE_2__ dst; } ;
struct dn_route {TYPE_1__ u; scalar_t__ rt_gateway; int /*<<< orphan*/  rt_type; } ;
struct dn_fib_res {int /*<<< orphan*/  type; struct dn_fib_info* fi; } ;
struct dn_fib_info {int /*<<< orphan*/  fib_metrics; } ;
struct TYPE_7__ {scalar_t__ nh_scope; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dn_fib_res) ; 
 TYPE_4__ FUNC1 (struct dn_fib_res) ; 
 scalar_t__ FUNC2 (struct neighbour*) ; 
 int FUNC3 (struct neighbour*) ; 
 int RTAX_ADVMSS ; 
 int RTAX_MTU ; 
 scalar_t__ RT_SCOPE_LINK ; 
 struct neighbour* FUNC4 (int /*<<< orphan*/ *,scalar_t__*,struct net_device*) ; 
 unsigned int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 unsigned int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct dn_route *rt, struct dn_fib_res *res)
{
	struct dn_fib_info *fi = res->fi;
	struct net_device *dev = rt->u.dst.dev;
	struct neighbour *n;
	unsigned mss;

	if (fi) {
		if (FUNC0(*res) &&
		    FUNC1(*res).nh_scope == RT_SCOPE_LINK)
			rt->rt_gateway = FUNC0(*res);
		FUNC8(rt->u.dst.metrics, fi->fib_metrics,
		       sizeof(rt->u.dst.metrics));
	}
	rt->rt_type = res->type;

	if (dev != NULL && rt->u.dst.neighbour == NULL) {
		n = FUNC4(&dn_neigh_table, &rt->rt_gateway, dev);
		if (FUNC2(n))
			return FUNC3(n);
		rt->u.dst.neighbour = n;
	}

	if (FUNC6(&rt->u.dst, RTAX_MTU) == 0 ||
	    FUNC6(&rt->u.dst, RTAX_MTU) > rt->u.dst.dev->mtu)
		rt->u.dst.metrics[RTAX_MTU-1] = rt->u.dst.dev->mtu;
	mss = FUNC5(dev, FUNC7(&rt->u.dst));
	if (FUNC6(&rt->u.dst, RTAX_ADVMSS) == 0 ||
	    FUNC6(&rt->u.dst, RTAX_ADVMSS) > mss)
		rt->u.dst.metrics[RTAX_ADVMSS-1] = mss;
	return 0;
}