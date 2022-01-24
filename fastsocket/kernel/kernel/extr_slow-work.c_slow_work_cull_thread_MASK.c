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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int slow_work_cull ; 
 scalar_t__ slow_work_min_threads ; 
 int /*<<< orphan*/  slow_work_queue ; 
 int /*<<< orphan*/  slow_work_queue_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  slow_work_thread_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vslow_work_queue ; 

__attribute__((used)) static bool FUNC5(void)
{
	unsigned long flags;
	bool do_cull = false;

	FUNC3(&slow_work_queue_lock, flags);

	if (slow_work_cull) {
		slow_work_cull = false;

		if (FUNC1(&slow_work_queue) &&
		    FUNC1(&vslow_work_queue) &&
		    FUNC0(&slow_work_thread_count) >
		    slow_work_min_threads) {
			FUNC2();
			do_cull = true;
		}
	}

	FUNC4(&slow_work_queue_lock, flags);
	return do_cull;
}