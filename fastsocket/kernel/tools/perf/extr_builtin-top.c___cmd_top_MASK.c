#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sched_param {scalar_t__ sched_priority; } ;
struct perf_top {scalar_t__ samples; TYPE_2__* session; TYPE_1__* evlist; scalar_t__ realtime_prio; int /*<<< orphan*/  tool; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_6__ {TYPE_1__* evlist; int /*<<< orphan*/  host_machine; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_fds; int /*<<< orphan*/  pollfd; int /*<<< orphan*/  threads; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  display_thread ; 
 int /*<<< orphan*/  display_thread_tui ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  perf_event__process ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_top*) ; 
 int FUNC8 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_top*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_top*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ use_browser ; 

__attribute__((used)) static int FUNC14(struct perf_top *top)
{
	pthread_t thread;
	int ret;
	/*
	 * FIXME: perf_session__new should allow passing a O_MMAP, so that all this
	 * mmap reading, etc is encapsulated in it. Use O_WRONLY for now.
	 */
	top->session = FUNC4(NULL, O_WRONLY, false, false, NULL);
	if (top->session == NULL)
		return -ENOMEM;

	ret = FUNC8(top);
	if (ret)
		goto out_delete;

	if (FUNC6(&top->target))
		FUNC1(&top->tool, top->evlist->threads,
						  perf_event__process,
						  &top->session->host_machine);
	else
		FUNC2(&top->tool, perf_event__process,
					       &top->session->host_machine);
	FUNC9(top);
	top->session->evlist = top->evlist;
	FUNC5(top->session);

	/* Wait for a minimal set of events before starting the snapshot */
	FUNC10(top->evlist->pollfd, top->evlist->nr_fds, 100);

	FUNC7(top);

	if (FUNC11(&thread, NULL, (use_browser > 0 ? display_thread_tui :
							    display_thread), top)) {
		FUNC13("Could not create display thread.\n");
		FUNC0(-1);
	}

	if (top->realtime_prio) {
		struct sched_param param;

		param.sched_priority = top->realtime_prio;
		if (FUNC12(0, SCHED_FIFO, &param)) {
			FUNC13("Could not set realtime priority.\n");
			FUNC0(-1);
		}
	}

	while (1) {
		u64 hits = top->samples;

		FUNC7(top);

		if (hits == top->samples)
			ret = FUNC10(top->evlist->pollfd, top->evlist->nr_fds, 100);
	}

out_delete:
	FUNC3(top->session);
	top->session = NULL;

	return 0;
}