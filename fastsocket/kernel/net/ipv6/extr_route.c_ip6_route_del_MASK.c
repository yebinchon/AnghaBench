#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct rt6_info* rt6_next; } ;
struct TYPE_6__ {TYPE_3__ dst; } ;
struct rt6_info {scalar_t__ rt6i_metric; TYPE_2__ u; int /*<<< orphan*/  rt6i_gateway; TYPE_1__* rt6i_dev; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; int /*<<< orphan*/  tb6_root; } ;
struct fib6_node {struct rt6_info* leaf; } ;
struct TYPE_8__ {int /*<<< orphan*/  nl_net; } ;
struct fib6_config {scalar_t__ fc_ifindex; int fc_flags; scalar_t__ fc_metric; TYPE_4__ fc_nlinfo; int /*<<< orphan*/  fc_gateway; int /*<<< orphan*/  fc_src_len; int /*<<< orphan*/  fc_src; int /*<<< orphan*/  fc_dst_len; int /*<<< orphan*/  fc_dst; int /*<<< orphan*/  fc_table; } ;
struct TYPE_5__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int ESRCH ; 
 int RTF_GATEWAY ; 
 int FUNC0 (struct rt6_info*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 struct fib6_table* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fib6_node* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct fib6_config *cfg)
{
	struct fib6_table *table;
	struct fib6_node *fn;
	struct rt6_info *rt;
	int err = -ESRCH;

	table = FUNC2(cfg->fc_nlinfo.nl_net, cfg->fc_table);
	if (table == NULL)
		return err;

	FUNC5(&table->tb6_lock);

	fn = FUNC3(&table->tb6_root,
			 &cfg->fc_dst, cfg->fc_dst_len,
			 &cfg->fc_src, cfg->fc_src_len);

	if (fn) {
		for (rt = fn->leaf; rt; rt = rt->u.dst.rt6_next) {
			if (cfg->fc_ifindex &&
			    (rt->rt6i_dev == NULL ||
			     rt->rt6i_dev->ifindex != cfg->fc_ifindex))
				continue;
			if (cfg->fc_flags & RTF_GATEWAY &&
			    !FUNC4(&cfg->fc_gateway, &rt->rt6i_gateway))
				continue;
			if (cfg->fc_metric && cfg->fc_metric != rt->rt6i_metric)
				continue;
			FUNC1(&rt->u.dst);
			FUNC6(&table->tb6_lock);

			return FUNC0(rt, &cfg->fc_nlinfo);
		}
	}
	FUNC6(&table->tb6_lock);

	return err;
}