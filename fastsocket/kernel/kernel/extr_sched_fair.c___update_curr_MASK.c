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
typedef  int /*<<< orphan*/  u64 ;
struct sched_entity {unsigned long sum_exec_runtime; unsigned long vruntime; int /*<<< orphan*/  exec_max; } ;
struct cfs_rq {unsigned long load_unacc_exec_time; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,struct sched_entity*) ; 
 int /*<<< orphan*/  exec_clock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*) ; 

__attribute__((used)) static inline void
FUNC5(struct cfs_rq *cfs_rq, struct sched_entity *curr,
	      unsigned long delta_exec)
{
	unsigned long delta_exec_weighted;

	FUNC3(curr->exec_max, FUNC1((u64)delta_exec, curr->exec_max));

	curr->sum_exec_runtime += delta_exec;
	FUNC2(cfs_rq, exec_clock, delta_exec);
	delta_exec_weighted = FUNC0(delta_exec, curr);

	curr->vruntime += delta_exec_weighted;
	FUNC4(cfs_rq);

#if defined CONFIG_SMP && defined CONFIG_FAIR_GROUP_SCHED
	cfs_rq->load_unacc_exec_time += delta_exec;
#endif
}