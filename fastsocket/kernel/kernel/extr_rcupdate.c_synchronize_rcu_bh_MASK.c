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
struct rcu_synchronize {int /*<<< orphan*/  completion; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeme_after_rcu ; 

void FUNC4(void)
{
	struct rcu_synchronize rcu;

	if (FUNC2())
		return;

	FUNC1(&rcu.completion);
	/* Will wake me after RCU finished. */
	FUNC0(&rcu.head, wakeme_after_rcu);
	/* Wait for it. */
	FUNC3(&rcu.completion);
}