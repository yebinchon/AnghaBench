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
struct ftrace_event_call {int (* profile_enable ) (struct ftrace_event_call*) ;int /*<<< orphan*/  profile_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_trace_t ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct ftrace_event_call*) ; 
 int /*<<< orphan*/  total_profile_count ; 
 int /*<<< orphan*/ * trace_profile_buf ; 
 int /*<<< orphan*/ * trace_profile_buf_nmi ; 

__attribute__((used)) static int FUNC6(struct ftrace_event_call *event)
{
	char *buf;
	int ret = -ENOMEM;

	if (FUNC2(&event->profile_count))
		return 0;

	if (!total_profile_count) {
		buf = (char *)FUNC0(perf_trace_t);
		if (!buf)
			goto fail_buf;

		FUNC4(trace_profile_buf, buf);

		buf = (char *)FUNC0(perf_trace_t);
		if (!buf)
			goto fail_buf_nmi;

		FUNC4(trace_profile_buf_nmi, buf);
	}

	ret = event->profile_enable(event);
	if (!ret) {
		total_profile_count++;
		return 0;
	}

fail_buf_nmi:
	if (!total_profile_count) {
		FUNC3(trace_profile_buf_nmi);
		FUNC3(trace_profile_buf);
		trace_profile_buf_nmi = NULL;
		trace_profile_buf = NULL;
	}
fail_buf:
	FUNC1(&event->profile_count);

	return ret;
}