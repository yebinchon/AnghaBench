#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct netlink_callback {int* args; } ;
struct fib6_walker_t {int /*<<< orphan*/ * root; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; int /*<<< orphan*/  tb6_root; } ;

/* Variables and functions */
 int FUNC0 (struct fib6_walker_t*) ; 
 int FUNC1 (struct fib6_walker_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_walker_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fib6_table *table, struct sk_buff *skb,
			   struct netlink_callback *cb)
{
	struct fib6_walker_t *w;
	int res;

	w = (void *)cb->args[2];
	w->root = &table->tb6_root;

	if (cb->args[4] == 0) {
		FUNC3(&table->tb6_lock);
		res = FUNC0(w);
		FUNC4(&table->tb6_lock);
		if (res > 0)
			cb->args[4] = 1;
	} else {
		FUNC3(&table->tb6_lock);
		res = FUNC1(w);
		FUNC4(&table->tb6_lock);
		if (res <= 0) {
			FUNC2(w);
			cb->args[4] = 0;
		}
	}

	return res;
}