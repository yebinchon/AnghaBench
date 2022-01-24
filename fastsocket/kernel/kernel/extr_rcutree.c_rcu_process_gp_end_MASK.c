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
struct rcu_state {int dummy; } ;
struct rcu_node {int /*<<< orphan*/  lock; int /*<<< orphan*/  completed; } ;
struct rcu_data {scalar_t__ completed; struct rcu_node* mynode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_state*,struct rcu_node*,struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct rcu_state *rsp, struct rcu_data *rdp)
{
	unsigned long flags;
	struct rcu_node *rnp;

	FUNC3(flags);
	rnp = rdp->mynode;
	if (rdp->completed == FUNC0(rnp->completed) || /* outside lock. */
	    !FUNC4(&rnp->lock)) { /* irqs already off, retry later. */
		FUNC2(flags);
		return;
	}
	FUNC1(rsp, rnp, rdp);
	FUNC5(&rnp->lock, flags);
}