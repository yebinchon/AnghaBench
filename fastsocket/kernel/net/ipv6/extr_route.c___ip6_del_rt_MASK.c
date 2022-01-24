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
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_2__ u; struct fib6_table* rt6i_table; int /*<<< orphan*/  rt6i_dev; } ;
struct nl_info {int dummy; } ;
struct TYPE_3__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rt6_info*,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rt6_info *rt, struct nl_info *info)
{
	int err;
	struct fib6_table *table;
	struct net *net = FUNC0(rt->rt6i_dev);

	if (rt == net->ipv6.ip6_null_entry)
		return -ENOENT;

	table = rt->rt6i_table;
	FUNC3(&table->tb6_lock);

	err = FUNC2(rt, info);
	FUNC1(&rt->u.dst);

	FUNC4(&table->tb6_lock);

	return err;
}