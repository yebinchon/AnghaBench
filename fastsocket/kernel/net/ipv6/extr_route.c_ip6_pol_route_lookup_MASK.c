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
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_1__ u; } ;
struct net {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_dst; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; int /*<<< orphan*/  tb6_root; } ;
struct fib6_node {struct rt6_info* leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fib6_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rt6_info* FUNC5 (struct net*,struct rt6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct rt6_info *FUNC6(struct net *net,
					     struct fib6_table *table,
					     struct flowi *fl, int flags)
{
	struct fib6_node *fn;
	struct rt6_info *rt;

	FUNC3(&table->tb6_lock);
	fn = FUNC2(&table->tb6_root, &fl->fl6_dst, &fl->fl6_src);
restart:
	rt = fn->leaf;
	rt = FUNC5(net, rt, &fl->fl6_src, fl->oif, flags);
	FUNC0(net, &fl->fl6_src);
out:
	FUNC1(&rt->u.dst, jiffies);
	FUNC4(&table->tb6_lock);
	return rt;

}