#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SLOW_WORK_THREAD_LIMIT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* current ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ slow_work_cull ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  slow_work_ids ; 
 int /*<<< orphan*/  slow_work_last_thread_exited ; 
 int slow_work_min_threads ; 
 int /*<<< orphan*/  slow_work_queue ; 
 int /*<<< orphan*/  slow_work_queue_lock ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slow_work_thread_count ; 
 int /*<<< orphan*/  slow_work_thread_wq ; 
 scalar_t__ slow_work_threads_should_exit ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int vslow_work_proportion ; 
 int /*<<< orphan*/  vslow_work_queue ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC25(void *_data)
{
	int vsmax, id;

	FUNC1(wait);

	FUNC14();
	FUNC15(current, -5);

	/* allocate ourselves an ID */
	FUNC21(&slow_work_queue_lock);
	id = FUNC8(slow_work_ids, SLOW_WORK_THREAD_LIMIT);
	FUNC0(id < 0 || id >= SLOW_WORK_THREAD_LIMIT);
	FUNC3(id, slow_work_ids);
	FUNC20(id, current->pid);
	FUNC22(&slow_work_queue_lock);

	FUNC23(current->comm, "kslowd%03u", id);

	for (;;) {
		vsmax = vslow_work_proportion;
		vsmax *= FUNC5(&slow_work_thread_count);
		vsmax /= 100;

		FUNC12(&slow_work_thread_wq, &wait,
					  TASK_INTERRUPTIBLE);
		if (!FUNC10(current) &&
		    !slow_work_threads_should_exit &&
		    !FUNC16(vsmax) &&
		    !slow_work_cull)
			FUNC13();
		FUNC9(&slow_work_thread_wq, &wait);

		FUNC24();

		vsmax = vslow_work_proportion;
		vsmax *= FUNC5(&slow_work_thread_count);
		vsmax /= 100;

		if (FUNC16(vsmax) && FUNC18(id)) {
			FUNC7();
			if (FUNC11(&slow_work_queue) &&
			    FUNC11(&vslow_work_queue) &&
			    FUNC5(&slow_work_thread_count) >
			    slow_work_min_threads)
				FUNC19();
			continue;
		}

		if (slow_work_threads_should_exit)
			break;

		if (slow_work_cull && FUNC17())
			break;
	}

	FUNC21(&slow_work_queue_lock);
	FUNC20(id, 0);
	FUNC2(id, slow_work_ids);
	FUNC22(&slow_work_queue_lock);

	if (FUNC4(&slow_work_thread_count))
		FUNC6(&slow_work_last_thread_exited, 0);
	return 0;
}