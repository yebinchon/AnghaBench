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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  MAX_THREADS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  async_new ; 
 int /*<<< orphan*/  async_pending ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_count ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC14(void *unused)
{
	FUNC0(wq, current);
	FUNC1(&async_new, &wq);

	while (!FUNC4()) {
		int ret = HZ;
		/*
		 * check the list head without lock.. false positives
		 * are dealt with inside run_one_entry() while holding
		 * the lock.
		 */
		FUNC8();
		if (FUNC6())
			FUNC10();

		if (!FUNC5(&async_pending))
			FUNC9();
		else {
			FUNC12(TASK_INTERRUPTIBLE);
			ret = FUNC11(HZ);
		}

		if (ret == 0) {
			/*
			 * we timed out, this means we as thread are redundant.
			 * we sign off and die, but we to avoid any races there
			 * is a last-straw check to see if work snuck in.
			 */
			FUNC3(&thread_count);
			FUNC13(); /* manager must see our departure first */
			if (FUNC5(&async_pending))
				break;
			/*
			 * woops work came in between us timing out and us
			 * signing off; we need to stay alive and keep working.
			 */
			if (!FUNC2(&thread_count, 1, MAX_THREADS))
				/*
				 * The thread manager raced in and created a new thread
				 * While we were checking list empty
				 */
				break;
		}
	}
	FUNC7(&async_new, &wq);

	return 0;
}