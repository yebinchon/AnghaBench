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
 unsigned int FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 char** FUNC2 (unsigned int,int) ; 
 int FUNC3 (unsigned int,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const* const) ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv)
{
	unsigned int rec_argc, i, j;
	const char **rec_argv;
	const char * const record_args[] = {
		"record",
		"-a",
		"-R",
		"-f",
		"-m", "1024",
		"-c", "1",
		"-e", "sched:sched_switch",
		"-e", "sched:sched_stat_wait",
		"-e", "sched:sched_stat_sleep",
		"-e", "sched:sched_stat_iowait",
		"-e", "sched:sched_stat_runtime",
		"-e", "sched:sched_process_exit",
		"-e", "sched:sched_process_fork",
		"-e", "sched:sched_wakeup",
		"-e", "sched:sched_migrate_task",
	};

	rec_argc = FUNC0(record_args) + argc - 1;
	rec_argv = FUNC2(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	for (i = 0; i < FUNC0(record_args); i++)
		rec_argv[i] = FUNC4(record_args[i]);

	for (j = 1; j < (unsigned int)argc; j++, i++)
		rec_argv[i] = argv[j];

	FUNC1(i != rec_argc);

	return FUNC3(i, rec_argv, NULL);
}