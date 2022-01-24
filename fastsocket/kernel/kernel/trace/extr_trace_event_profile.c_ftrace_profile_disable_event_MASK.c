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
struct ftrace_event_call {int /*<<< orphan*/  (* profile_disable ) (struct ftrace_event_call*) ;int /*<<< orphan*/  profile_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ftrace_event_call*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  total_profile_count ; 
 char* trace_profile_buf ; 
 char* trace_profile_buf_nmi ; 

__attribute__((used)) static void FUNC5(struct ftrace_event_call *event)
{
	char *buf, *nmi_buf;

	if (!FUNC0(-1, &event->profile_count))
		return;

	event->profile_disable(event);

	if (!--total_profile_count) {
		buf = trace_profile_buf;
		FUNC2(trace_profile_buf, NULL);

		nmi_buf = trace_profile_buf_nmi;
		FUNC2(trace_profile_buf_nmi, NULL);

		/*
		 * Ensure every events in profiling have finished before
		 * releasing the buffers
		 */
		FUNC4();

		FUNC1(buf);
		FUNC1(nmi_buf);
	}
}