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
typedef  int /*<<< orphan*/  u32 ;
struct rt6key {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lastuse; scalar_t__ dev; int /*<<< orphan*/  error; int /*<<< orphan*/ * metrics; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct rt6_info {int rt6i_flags; int /*<<< orphan*/  rt6i_table; int /*<<< orphan*/  rt6i_prefsrc; int /*<<< orphan*/  rt6i_src; int /*<<< orphan*/  rt6i_dst; scalar_t__ rt6i_metric; int /*<<< orphan*/  rt6i_gateway; scalar_t__ rt6i_expires; TYPE_3__ u; scalar_t__ rt6i_idev; int /*<<< orphan*/  rt6i_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip6_dst_ops; } ;
struct net {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int RTAX_MAX ; 
 int RTF_EXPIRES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct rt6_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct rt6_info * FUNC6(struct rt6_info *ort)
{
	struct net *net = FUNC1(ort->rt6i_dev);
	struct rt6_info *rt = FUNC3(&net->ipv6.ip6_dst_ops);

	if (rt) {
		rt->u.dst.input = ort->u.dst.input;
		rt->u.dst.output = ort->u.dst.output;

		FUNC5(rt->u.dst.metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));
		rt->u.dst.error = ort->u.dst.error;
		rt->u.dst.dev = ort->u.dst.dev;
		if (rt->u.dst.dev)
			FUNC0(rt->u.dst.dev);
		rt->rt6i_idev = ort->rt6i_idev;
		if (rt->rt6i_idev)
			FUNC2(rt->rt6i_idev);
		rt->u.dst.lastuse = jiffies;
		rt->rt6i_expires = 0;

		FUNC4(&rt->rt6i_gateway, &ort->rt6i_gateway);
		rt->rt6i_flags = ort->rt6i_flags & ~RTF_EXPIRES;
		rt->rt6i_metric = 0;

		FUNC5(&rt->rt6i_dst, &ort->rt6i_dst, sizeof(struct rt6key));
#ifdef CONFIG_IPV6_SUBTREES
		memcpy(&rt->rt6i_src, &ort->rt6i_src, sizeof(struct rt6key));
#endif
		FUNC5(&rt->rt6i_prefsrc, &ort->rt6i_prefsrc, sizeof(struct rt6key));
		rt->rt6i_table = ort->rt6i_table;
	}
	return rt;
}