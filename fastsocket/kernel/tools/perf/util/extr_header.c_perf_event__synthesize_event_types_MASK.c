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
struct perf_trace_event_type {int /*<<< orphan*/  name; int /*<<< orphan*/  event_id; } ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
typedef  int /*<<< orphan*/  perf_event__handler_t ;

/* Variables and functions */
 int FUNC0 (struct perf_tool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct machine*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int trace_event_count ; 
 struct perf_trace_event_type* trace_events ; 

int FUNC2(struct perf_tool *tool,
				       perf_event__handler_t process,
				       struct machine *machine)
{
	struct perf_trace_event_type *type;
	int i, err = 0;

	for (i = 0; i < trace_event_count; i++) {
		type = &trace_events[i];

		err = FUNC0(tool, type->event_id,
							type->name, process,
							machine);
		if (err) {
			FUNC1("failed to create perf header event type\n");
			return err;
		}
	}

	return err;
}