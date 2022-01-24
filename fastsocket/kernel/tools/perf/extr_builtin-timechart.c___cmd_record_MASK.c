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
 int ENOMEM ; 
 char** FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char const* const) ; 
 int use_old_power_events ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv)
{
#ifdef SUPPORT_OLD_POWER_EVENTS
	const char * const record_old_args[] = {
		"record", "-a", "-R", "-f", "-c", "1",
		"-e", "power:power_start",
		"-e", "power:power_end",
		"-e", "power:power_frequency",
		"-e", "sched:sched_wakeup",
		"-e", "sched:sched_switch",
	};
#endif
	const char * const record_new_args[] = {
		"record", "-a", "-R", "-f", "-c", "1",
		"-e", "power:cpu_frequency",
		"-e", "power:cpu_idle",
		"-e", "sched:sched_wakeup",
		"-e", "sched:sched_switch",
	};
	unsigned int rec_argc, i, j;
	const char **rec_argv;
	const char * const *record_args = record_new_args;
	unsigned int record_elems = FUNC0(record_new_args);

#ifdef SUPPORT_OLD_POWER_EVENTS
	if (!is_valid_tracepoint("power:cpu_idle") &&
	    is_valid_tracepoint("power:power_start")) {
		use_old_power_events = 1;
		record_args = record_old_args;
		record_elems = ARRAY_SIZE(record_old_args);
	}
#endif

	rec_argc = record_elems + argc - 1;
	rec_argv = FUNC1(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	for (i = 0; i < record_elems; i++)
		rec_argv[i] = FUNC4(record_args[i]);

	for (j = 1; j < (unsigned int)argc; j++, i++)
		rec_argv[i] = argv[j];

	return FUNC2(i, rec_argv, NULL);
}