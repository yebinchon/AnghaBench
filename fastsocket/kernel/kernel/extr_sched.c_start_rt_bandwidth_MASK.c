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
struct rt_bandwidth {scalar_t__ rt_runtime; int /*<<< orphan*/  rt_runtime_lock; int /*<<< orphan*/  rt_period; int /*<<< orphan*/  rt_period_timer; } ;

/* Variables and functions */
 scalar_t__ RUNTIME_INF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rt_bandwidth *rt_b)
{
	if (!FUNC1() || rt_b->rt_runtime == RUNTIME_INF)
		return;

	if (FUNC0(&rt_b->rt_period_timer))
		return;

	FUNC2(&rt_b->rt_runtime_lock);
	FUNC4(&rt_b->rt_period_timer, rt_b->rt_period);
	FUNC3(&rt_b->rt_runtime_lock);
}