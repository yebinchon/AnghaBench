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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  probe_sched_switch ; 
 int /*<<< orphan*/  probe_sched_wakeup ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	ret = FUNC2(probe_sched_wakeup);
	if (ret) {
		FUNC0("wakeup trace: Couldn't activate tracepoint"
			" probe to kernel_sched_wakeup\n");
		return ret;
	}

	ret = FUNC3(probe_sched_wakeup);
	if (ret) {
		FUNC0("wakeup trace: Couldn't activate tracepoint"
			" probe to kernel_sched_wakeup_new\n");
		goto fail_deprobe;
	}

	ret = FUNC1(probe_sched_switch);
	if (ret) {
		FUNC0("sched trace: Couldn't activate tracepoint"
			" probe to kernel_sched_switch\n");
		goto fail_deprobe_wake_new;
	}

	return ret;
fail_deprobe_wake_new:
	FUNC5(probe_sched_wakeup);
fail_deprobe:
	FUNC4(probe_sched_wakeup);
	return ret;
}