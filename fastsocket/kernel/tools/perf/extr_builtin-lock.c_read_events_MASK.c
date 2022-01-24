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
struct perf_tool {int ordered_samples; int /*<<< orphan*/  comm; int /*<<< orphan*/  sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  lock_tracepoints ; 
 int /*<<< orphan*/  perf_event__process_comm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct perf_tool*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct perf_tool*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  process_sample_event ; 
 int /*<<< orphan*/  session ; 

__attribute__((used)) static int FUNC4(void)
{
	struct perf_tool eops = {
		.sample		 = process_sample_event,
		.comm		 = perf_event__process_comm,
		.ordered_samples = true,
	};
	session = FUNC0(input_name, O_RDONLY, 0, false, &eops);
	if (!session) {
		FUNC3("Initializing perf session failed\n");
		return -1;
	}

	if (FUNC2(session, lock_tracepoints)) {
		FUNC3("Initializing perf session tracepoint handlers failed\n");
		return -1;
	}

	return FUNC1(session, &eops);
}