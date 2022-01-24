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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct rcu_state*) ; 
 int /*<<< orphan*/  rcu_barrier_completion ; 
 int /*<<< orphan*/  rcu_barrier_cpu_count ; 
 int /*<<< orphan*/  rcu_barrier_func ; 
 int /*<<< orphan*/  rcu_barrier_mutex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct rcu_state *rsp,
			 void (*call_rcu_func)(struct rcu_head *head,
					       void (*func)(struct rcu_head *head)))
{
	FUNC0(FUNC4());
	/* Take mutex to serialize concurrent rcu_barrier() requests. */
	FUNC6(&rcu_barrier_mutex);
	FUNC5(&rcu_barrier_completion);
	/*
	 * Initialize rcu_barrier_cpu_count to 1, then invoke
	 * rcu_barrier_func() on each CPU, so that each CPU also has
	 * incremented rcu_barrier_cpu_count.  Only then is it safe to
	 * decrement rcu_barrier_cpu_count -- otherwise the first CPU
	 * might complete its grace period before all of the other CPUs
	 * did their increment, causing this function to return too
	 * early.
	 */
	FUNC2(&rcu_barrier_cpu_count, 1);
	FUNC9(); /* stop CPU_DYING from filling orphan_cbs_list */
	FUNC11(rsp);
	FUNC8(rcu_barrier_func, (void *)call_rcu_func, 1);
	FUNC10(); /* CPU_DYING can again fill orphan_cbs_list */
	if (FUNC1(&rcu_barrier_cpu_count))
		FUNC3(&rcu_barrier_completion);
	FUNC12(&rcu_barrier_completion);
	FUNC7(&rcu_barrier_mutex);
}