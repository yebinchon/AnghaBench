#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int flags; struct reclaim_state* reclaim_state; } ;
struct reclaim_state {int /*<<< orphan*/  reclaimed_slab; } ;
struct cpumask {int dummy; } ;
struct TYPE_5__ {unsigned long kswapd_max_order; int /*<<< orphan*/  node_id; int /*<<< orphan*/  kswapd_wait; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  KSWAPD_HIGH_WMARK_HIT_QUICKLY ; 
 int /*<<< orphan*/  KSWAPD_LOW_WMARK_HIT_QUICKLY ; 
 int PF_KSWAPD ; 
 int PF_MEMALLOC ; 
 int PF_SWAPWRITE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  calculate_normal_threshold ; 
 int /*<<< orphan*/  calculate_pressure_threshold ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask const*) ; 
 struct cpumask* FUNC4 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 long FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC18(void *p)
{
	unsigned long order;
	pg_data_t *pgdat = (pg_data_t*)p;
	struct task_struct *tsk = current;
	FUNC0(wait);
	struct reclaim_state reclaim_state = {
		.reclaimed_slab = 0,
	};
	const struct cpumask *cpumask = FUNC4(pgdat->node_id);

	FUNC7(GFP_KERNEL);

	if (!FUNC3(cpumask))
		FUNC11(tsk, cpumask);
	current->reclaim_state = &reclaim_state;

	/*
	 * Tell the memory management that we're a "memory allocator",
	 * and that if we need more memory we should get access to it
	 * regardless (see "__alloc_pages()"). "kswapd" should
	 * never get caught in the normal page freeing logic.
	 *
	 * (Kswapd normally doesn't need memory anyway, but sometimes
	 * you need a small amount of memory in order to be able to
	 * page out something else, and this flag essentially protects
	 * us from recursively trying to free more memory as we're
	 * trying to free the first piece of memory in the first place).
	 */
	tsk->flags |= PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD;
	FUNC12();

	order = 0;
	for ( ; ; ) {
		unsigned long new_order;

		FUNC8(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
		new_order = pgdat->kswapd_max_order;
		pgdat->kswapd_max_order = 0;
		if (order < new_order) {
			/*
			 * Don't sleep if someone wants a larger 'order'
			 * allocation
			 */
			order = new_order;
		} else {
			if (!FUNC6(current)) {
				long remaining = 0;

				/* Try to sleep for a short interval */
				if (!FUNC14(pgdat, order, remaining)) {
					remaining = FUNC10(HZ/10);
					FUNC5(&pgdat->kswapd_wait, &wait);
					FUNC8(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
				}

				/*
				 * After a short sleep, check if it was a
				 * premature sleep. If not, then go fully
				 * to sleep until explicitly woken up
				 */
				if (!FUNC14(pgdat, order, remaining)) {
					FUNC15(pgdat->node_id);

					/*
					 * vmstat counters are not perfectly
					 * accurate and the estimated value
					 * for counters such as NR_FREE_PAGES
					 * can deviate from the true value by
					 * nr_online_cpus * threshold. To
					 * avoid the zone watermarks being
					 * breached while under pressure, we
					 * reduce the per-cpu vmstat threshold
					 * while kswapd is awake and restore
					 * them before going back to sleep.
					 */
					FUNC13(pgdat,
						calculate_normal_threshold);

					FUNC9();
					FUNC13(pgdat,
						calculate_pressure_threshold);
				} else {
					if (remaining)
						FUNC2(KSWAPD_LOW_WMARK_HIT_QUICKLY);
					else
						FUNC2(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
				}
			}

			order = pgdat->kswapd_max_order;
		}
		FUNC5(&pgdat->kswapd_wait, &wait);

		if (!FUNC17()) {
			/* We can speed up thawing tasks if we don't call
			 * balance_pgdat after returning from the refrigerator
			 */
			FUNC16(pgdat->node_id, order);
			FUNC1(pgdat, order);
		}
	}
	return 0;
}