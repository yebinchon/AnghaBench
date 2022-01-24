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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * congestion_wqh ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC4 (long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/ * nr_bdi_congested ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC6 (struct zone*) ; 

long FUNC7(struct zone *zone, int sync, long timeout)
{
	long ret;
	unsigned long start = jiffies;
	FUNC0(wait);
	wait_queue_head_t *wqh = &congestion_wqh[sync];

	/*
	 * If there is no congestion, or heavy congestion is not being
	 * encountered in the current zone, yield if necessary instead
	 * of sleeping on the congestion queue
	 */
	if (FUNC1(&nr_bdi_congested[sync]) == 0 ||
			!FUNC6(zone)) {
		FUNC2();

		/* In case we scheduled, work out time remaining */
		ret = timeout - (jiffies - start);
		if (ret < 0)
			ret = 0;

		goto out;
	}

	/* Sleep until uncongested or a write happens */
	FUNC5(wqh, &wait, TASK_UNINTERRUPTIBLE);
	ret = FUNC4(timeout);
	FUNC3(wqh, &wait);

out:

	return ret;
}