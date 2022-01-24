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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_THREADS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  async_new ; 
 int /*<<< orphan*/  async_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  entry_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_count ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC12(void *unused)
{
	FUNC0(wq, current);
	FUNC2(&async_new, &wq);

	while (!FUNC6()) {
		int tc, ec;

		FUNC11(TASK_INTERRUPTIBLE);

		tc = FUNC4(&thread_count);
		FUNC9();
		ec = FUNC4(&entry_count);

		while (tc < ec && tc < MAX_THREADS) {
			if (FUNC1(FUNC5(async_thread, NULL, "async/%i",
					       tc))) {
				FUNC7(100);
				continue;
			}
			if (!FUNC3(&thread_count, 1, MAX_THREADS))
				/*
				 * One of the exiting workers decided to stick around
				 */
				break;
			tc++;
		}

		FUNC10();
	}
	FUNC8(&async_new, &wq);

	return 0;
}