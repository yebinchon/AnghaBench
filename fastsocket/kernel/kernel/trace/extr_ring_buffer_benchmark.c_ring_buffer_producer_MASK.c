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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct ring_buffer_event {int dummy; } ;

/* Variables and functions */
 unsigned long NSEC_PER_MSEC ; 
 scalar_t__ RUN_TIME ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 unsigned long long USEC_PER_SEC ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ consumer ; 
 scalar_t__ disable_reader ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ kill_test ; 
 unsigned long long read ; 
 int /*<<< orphan*/  read_done ; 
 scalar_t__ read_events ; 
 int /*<<< orphan*/  read_start ; 
 int reader_finish ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 int* FUNC5 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ring_buffer_event*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int wakeup_interval ; 

__attribute__((used)) static void FUNC14(void)
{
	struct timeval start_tv;
	struct timeval end_tv;
	unsigned long long time;
	unsigned long long entries;
	unsigned long long overruns;
	unsigned long missed = 0;
	unsigned long hit = 0;
	unsigned long avg;
	int cnt = 0;

	/*
	 * Hammer the buffer for 10 secs (this may
	 * make the system stall)
	 */
	FUNC11("Starting ring buffer hammer\n");
	FUNC2(&start_tv);
	do {
		struct ring_buffer_event *event;
		int *entry;

		event = FUNC6(buffer, 10);
		if (!event) {
			missed++;
		} else {
			hit++;
			entry = FUNC5(event);
			*entry = FUNC9();
			FUNC8(buffer, event);
		}
		FUNC2(&end_tv);

		cnt++;
		if (consumer && !(cnt % wakeup_interval))
			FUNC13(consumer);

#ifndef CONFIG_PREEMPT
		/*
		 * If we are a non preempt kernel, the 10 second run will
		 * stop everything while it runs. Instead, we will call
		 * cond_resched and also add any time that was lost by a
		 * rescedule.
		 *
		 * Do a cond resched at the same frequency we would wake up
		 * the reader.
		 */
		if (cnt % wakeup_interval)
			FUNC0();
#endif

	} while (end_tv.tv_sec < (start_tv.tv_sec + RUN_TIME) && !kill_test);
	FUNC11("End ring buffer hammer\n");

	if (consumer) {
		/* Init both completions here to avoid races */
		FUNC3(&read_start);
		FUNC3(&read_done);
		/* the completions must be visible before the finish var */
		FUNC10();
		reader_finish = 1;
		/* finish var visible before waking up the consumer */
		FUNC10();
		FUNC13(consumer);
		FUNC12(&read_done);
	}

	time = end_tv.tv_sec - start_tv.tv_sec;
	time *= USEC_PER_SEC;
	time += (long long)((long)end_tv.tv_usec - (long)start_tv.tv_usec);

	entries = FUNC4(buffer);
	overruns = FUNC7(buffer);

	if (kill_test)
		FUNC11("ERROR!\n");
	FUNC11("Time:     %lld (usecs)\n", time);
	FUNC11("Overruns: %lld\n", overruns);
	if (disable_reader)
		FUNC11("Read:     (reader disabled)\n");
	else
		FUNC11("Read:     %ld  (by %s)\n", read,
			read_events ? "events" : "pages");
	FUNC11("Entries:  %lld\n", entries);
	FUNC11("Total:    %lld\n", entries + overruns + read);
	FUNC11("Missed:   %ld\n", missed);
	FUNC11("Hit:      %ld\n", hit);

	/* Convert time from usecs to millisecs */
	FUNC1(time, USEC_PER_MSEC);
	if (time)
		hit /= (long)time;
	else
		FUNC11("TIME IS ZERO??\n");

	FUNC11("Entries per millisec: %ld\n", hit);

	if (hit) {
		/* Calculate the average time in nanosecs */
		avg = NSEC_PER_MSEC / hit;
		FUNC11("%ld ns per entry\n", avg);
	}

	if (missed) {
		if (time)
			missed /= (long)time;

		FUNC11("Total iterations per millisec: %ld\n",
			     hit + missed);

		/* it is possible that hit + missed will overflow and be zero */
		if (!(hit + missed)) {
			FUNC11("hit + missed overflowed and totalled zero!\n");
			hit--; /* make it non zero */
		}

		/* Caculate the average time in nanosecs */
		avg = NSEC_PER_MSEC / (hit + missed);
		FUNC11("%ld ns per entry\n", avg);
	}
}