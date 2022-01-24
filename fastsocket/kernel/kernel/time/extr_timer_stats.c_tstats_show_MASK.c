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
struct timespec {int tv_nsec; int tv_sec; } ;
struct seq_file {int dummy; } ;
struct entry {int timer_flag; scalar_t__ count; scalar_t__ expire_func; scalar_t__ start_func; int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int TIMER_STATS_FLAG_DEFERRABLE ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 struct entry* entries ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int nr_entries ; 
 int /*<<< orphan*/  overflow_count ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  show_mutex ; 
 int /*<<< orphan*/  time_start ; 
 int /*<<< orphan*/  time_stop ; 
 scalar_t__ timer_stats_active ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, void *v)
{
	struct timespec period;
	struct entry *entry;
	unsigned long ms;
	long events = 0;
	ktime_t time;
	int i;

	FUNC4(&show_mutex);
	/*
	 * If still active then calculate up to now:
	 */
	if (timer_stats_active)
		time_stop = FUNC1();

	time = FUNC2(time_stop, time_start);

	period = FUNC3(time);
	ms = period.tv_nsec / 1000000;

	FUNC8(m, "Timer Stats Version: v0.2\n");
	FUNC7(m, "Sample period: %ld.%03ld s\n", period.tv_sec, ms);
	if (FUNC0(&overflow_count))
		FUNC7(m, "Overflow: %d entries\n",
			FUNC0(&overflow_count));

	for (i = 0; i < nr_entries; i++) {
		entry = entries + i;
 		if (entry->timer_flag & TIMER_STATS_FLAG_DEFERRABLE) {
			FUNC7(m, "%4luD, %5d %-16s ",
				entry->count, entry->pid, entry->comm);
		} else {
			FUNC7(m, " %4lu, %5d %-16s ",
				entry->count, entry->pid, entry->comm);
		}

		FUNC6(m, (unsigned long)entry->start_func);
		FUNC8(m, " (");
		FUNC6(m, (unsigned long)entry->expire_func);
		FUNC8(m, ")\n");

		events += entry->count;
	}

	ms += period.tv_sec * 1000;
	if (!ms)
		ms = 1;

	if (events && period.tv_sec)
		FUNC7(m, "%ld total events, %ld.%03ld events/sec\n",
			   events, events * 1000 / ms,
			   (events * 1000000 / ms) % 1000);
	else
		FUNC7(m, "%ld total events\n", events);

	FUNC5(&show_mutex);

	return 0;
}