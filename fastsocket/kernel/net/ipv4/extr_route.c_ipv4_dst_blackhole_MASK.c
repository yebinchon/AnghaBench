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
typedef  int /*<<< orphan*/  u32 ;
struct dst_entry {int __use; scalar_t__ dev; int /*<<< orphan*/  metrics; void* output; void* input; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_4__ {struct dst_entry dst; } ;
struct rtable {TYPE_2__ u; TYPE_1__* peer; int /*<<< orphan*/  rt_spec_dst; int /*<<< orphan*/  rt_gateway; int /*<<< orphan*/  rt_iif; int /*<<< orphan*/  rt_src; int /*<<< orphan*/  rt_dst; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_flags; int /*<<< orphan*/  rt_genid; scalar_t__ idev; int /*<<< orphan*/  fl; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int RTAX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* dst_discard ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ipv4_dst_blackhole_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct rtable **rp, struct flowi *flp)
{
	struct rtable *ort = *rp;
	struct rtable *rt = (struct rtable *)
		FUNC3(&ipv4_dst_blackhole_ops);

	if (rt) {
		struct dst_entry *new = &rt->u.dst;

		FUNC1(&new->__refcnt, 1);
		new->__use = 1;
		new->input = dst_discard;
		new->output = dst_discard;
		FUNC7(new->metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));

		new->dev = ort->u.dst.dev;
		if (new->dev)
			FUNC2(new->dev);

		rt->fl = ort->fl;

		rt->idev = ort->idev;
		if (rt->idev)
			FUNC6(rt->idev);
		rt->rt_genid = FUNC8(net);
		rt->rt_flags = ort->rt_flags;
		rt->rt_type = ort->rt_type;
		rt->rt_dst = ort->rt_dst;
		rt->rt_src = ort->rt_src;
		rt->rt_iif = ort->rt_iif;
		rt->rt_gateway = ort->rt_gateway;
		rt->rt_spec_dst = ort->rt_spec_dst;
		rt->peer = ort->peer;
		if (rt->peer)
			FUNC0(&rt->peer->refcnt);

		FUNC4(new);
	}

	FUNC5(&(*rp)->u.dst);
	*rp = rt;
	return (rt ? 0 : -ENOMEM);
}