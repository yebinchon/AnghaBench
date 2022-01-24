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
struct rcu_bh_torture_synchronize {int /*<<< orphan*/  completion; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_bh_torture_wakeme_after_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct rcu_bh_torture_synchronize rcu;

	FUNC1(&rcu.completion);
	FUNC0(&rcu.head, rcu_bh_torture_wakeme_after_cb);
	FUNC2(&rcu.completion);
}