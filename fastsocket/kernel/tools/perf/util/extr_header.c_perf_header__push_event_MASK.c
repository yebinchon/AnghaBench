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
typedef  int /*<<< orphan*/  u64 ;
struct perf_trace_event_type {int /*<<< orphan*/  name; int /*<<< orphan*/  event_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MAX_EVENT_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct perf_trace_event_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct perf_trace_event_type* FUNC2 (struct perf_trace_event_type*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int trace_event_count ; 
 struct perf_trace_event_type* trace_events ; 

int FUNC5(u64 id, const char *name)
{
	struct perf_trace_event_type *nevents;

	if (FUNC3(name) > MAX_EVENT_NAME)
		FUNC1("Event %s will be truncated\n", name);

	nevents = FUNC2(trace_events, (trace_event_count + 1) * sizeof(*trace_events));
	if (nevents == NULL)
		return -ENOMEM;
	trace_events = nevents;

	FUNC0(&trace_events[trace_event_count], 0, sizeof(struct perf_trace_event_type));
	trace_events[trace_event_count].event_id = id;
	FUNC4(trace_events[trace_event_count].name, name, MAX_EVENT_NAME - 1);
	trace_event_count++;
	return 0;
}