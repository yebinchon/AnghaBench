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
struct net {int /*<<< orphan*/  rules_mod_lock; } ;
struct fib_rules_ops {int /*<<< orphan*/  list; struct net* fro_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib_rules_ops*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct fib_rules_ops *ops)
{
	struct net *net = ops->fro_net;

	FUNC3(&net->rules_mod_lock);
	FUNC1(&ops->list);
	FUNC0(ops);
	FUNC4(&net->rules_mod_lock);

	FUNC5();
	FUNC2(net);
}