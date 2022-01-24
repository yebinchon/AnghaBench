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
struct mmiotrace_map {int dummy; } ;
struct trace_mmiotrace_map {struct mmiotrace_map map; } ;
struct trace_array_cpu {int dummy; } ;
struct trace_array {struct ring_buffer* buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_MMIO_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dropped_count ; 
 struct ftrace_event_call event_mmiotrace_map ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_event_call*,struct trace_mmiotrace_map*,struct ring_buffer*,struct ring_buffer_event*) ; 
 int FUNC2 () ; 
 struct trace_mmiotrace_map* FUNC3 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer*,struct ring_buffer_event*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct trace_array *tr,
				struct trace_array_cpu *data,
				struct mmiotrace_map *map)
{
	struct ftrace_event_call *call = &event_mmiotrace_map;
	struct ring_buffer *buffer = tr->buffer;
	struct ring_buffer_event *event;
	struct trace_mmiotrace_map *entry;
	int pc = FUNC2();

	event = FUNC4(buffer, TRACE_MMIO_MAP,
					  sizeof(*entry), 0, pc);
	if (!event) {
		FUNC0(&dropped_count);
		return;
	}
	entry	= FUNC3(event);
	entry->map			= *map;

	if (!FUNC1(call, entry, buffer, event))
		FUNC5(buffer, event, 0, pc);
}