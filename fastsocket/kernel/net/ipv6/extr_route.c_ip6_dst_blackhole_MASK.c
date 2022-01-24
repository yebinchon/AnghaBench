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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct rt6key {int dummy; } ;
struct dst_entry {int __use; scalar_t__ dev; int /*<<< orphan*/ * metrics; void* output; void* input; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_2__ {struct dst_entry dst; } ;
struct rt6_info {int rt6i_flags; int /*<<< orphan*/  rt6i_src; int /*<<< orphan*/  rt6i_dst; scalar_t__ rt6i_metric; int /*<<< orphan*/  rt6i_gateway; scalar_t__ rt6i_expires; scalar_t__ rt6i_idev; TYPE_1__ u; } ;
struct flowi {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int RTAX_MAX ; 
 int RTF_EXPIRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* dst_discard ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ip6_dst_blackhole_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC8(struct sock *sk, struct dst_entry **dstp, struct flowi *fl)
{
	struct rt6_info *ort = (struct rt6_info *) *dstp;
	struct rt6_info *rt = (struct rt6_info *)
		FUNC2(&ip6_dst_blackhole_ops);
	struct dst_entry *new = NULL;

	if (rt) {
		new = &rt->u.dst;

		FUNC0(&new->__refcnt, 1);
		new->__use = 1;
		new->input = dst_discard;
		new->output = dst_discard;

		FUNC7(new->metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));
		new->dev = ort->u.dst.dev;
		if (new->dev)
			FUNC1(new->dev);
		rt->rt6i_idev = ort->rt6i_idev;
		if (rt->rt6i_idev)
			FUNC5(rt->rt6i_idev);
		rt->rt6i_expires = 0;

		FUNC6(&rt->rt6i_gateway, &ort->rt6i_gateway);
		rt->rt6i_flags = ort->rt6i_flags & ~RTF_EXPIRES;
		rt->rt6i_metric = 0;

		FUNC7(&rt->rt6i_dst, &ort->rt6i_dst, sizeof(struct rt6key));
#ifdef CONFIG_IPV6_SUBTREES
		memcpy(&rt->rt6i_src, &ort->rt6i_src, sizeof(struct rt6key));
#endif

		FUNC3(new);
	}

	FUNC4(*dstp);
	*dstp = new;
	return (new ? 0 : -ENOMEM);
}