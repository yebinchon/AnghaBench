#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  timer_active; } ;
struct task_group {int /*<<< orphan*/  load_weight; TYPE_3__ cfs_bandwidth; } ;
struct seq_file {int dummy; } ;
struct sched_entity {int vruntime; } ;
struct TYPE_5__ {int min_vruntime; } ;
struct rq {int /*<<< orphan*/  lock; TYPE_1__ cfs; } ;
struct TYPE_6__ {int /*<<< orphan*/  weight; } ;
struct cfs_rq {int exec_clock; int min_vruntime; int load_avg; int load_period; struct task_group* tg; int /*<<< orphan*/  load_contribution; int /*<<< orphan*/  throttle_count; int /*<<< orphan*/  throttled; TYPE_2__ load; int /*<<< orphan*/  nr_running; int /*<<< orphan*/  nr_spread_over; scalar_t__ rb_leftmost; } ;
typedef  int s64 ;
struct TYPE_8__ {int vruntime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (struct cfs_rq*) ; 
 struct sched_entity* FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rq* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,int,struct task_group*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct task_group*) ; 

void FUNC10(struct seq_file *m, int cpu, struct cfs_rq *cfs_rq)
{
	s64 MIN_vruntime = -1, min_vruntime, max_vruntime = -1,
		spread, rq0_min_vruntime, spread0;
	struct rq *rq = FUNC5(cpu);
	struct sched_entity *last;
	unsigned long flags;

#ifdef CONFIG_FAIR_GROUP_SCHED
	struct task_group *tg = cfs_rq->tg;

	SEQ_printf(m, "\ncfs_rq[%d]:%s\n", cpu, task_group_path(tg));
#else
	FUNC0(m, "\ncfs_rq[%d]:\n", cpu);
#endif
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "exec_clock",
			FUNC1(cfs_rq->exec_clock));

	FUNC7(&rq->lock, flags);
	if (cfs_rq->rb_leftmost)
		MIN_vruntime = (FUNC2(cfs_rq))->vruntime;
	last = FUNC3(cfs_rq);
	if (last)
		max_vruntime = last->vruntime;
	min_vruntime = cfs_rq->min_vruntime;
	rq0_min_vruntime = FUNC5(0)->cfs.min_vruntime;
	FUNC8(&rq->lock, flags);
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "MIN_vruntime",
			FUNC1(MIN_vruntime));
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "min_vruntime",
			FUNC1(min_vruntime));
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "max_vruntime",
			FUNC1(max_vruntime));
	spread = max_vruntime - MIN_vruntime;
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "spread",
			FUNC1(spread));
	spread0 = min_vruntime - rq0_min_vruntime;
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "spread0",
			FUNC1(spread0));
	FUNC0(m, "  .%-30s: %d\n", "nr_spread_over",
			cfs_rq->nr_spread_over);
	FUNC0(m, "  .%-30s: %ld\n", "nr_running", cfs_rq->nr_running);
	FUNC0(m, "  .%-30s: %ld\n", "load", cfs_rq->load.weight);
#ifdef CONFIG_CFS_BANDWIDTH
	SEQ_printf(m, "  .%-30s: %d\n", "tg->cfs_bandwidth.timer_active",
			cfs_rq->tg->cfs_bandwidth.timer_active);
	SEQ_printf(m, "  .%-30s: %d\n", "throttled",
			cfs_rq->throttled);
	SEQ_printf(m, "  .%-30s: %d\n", "throttle_count",
			cfs_rq->throttle_count);
#endif
#ifdef CONFIG_FAIR_GROUP_SCHED
#ifdef CONFIG_SMP
	SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "load_avg",
		   SPLIT_NS(cfs_rq->load_avg));
	SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "load_period",
		   SPLIT_NS(cfs_rq->load_period));
	SEQ_printf(m, "  .%-30s: %ld\n", "load_contrib",
		   cfs_rq->load_contribution);
	SEQ_printf(m, "  .%-30s: %d\n", "load_tg",
		   atomic_read(&tg->load_weight));
#endif

	print_cfs_group_stats(m, cpu, cfs_rq->tg);
#endif
}