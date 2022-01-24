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
struct boot_trace_call {int /*<<< orphan*/  func; } ;
struct trace_boot_call {struct boot_trace_call boot_call; } ;
struct trace_array {struct ring_buffer* buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;
typedef  scalar_t__ initcall_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_BOOT_CALL ; 
 struct trace_array* boot_trace ; 
 struct ftrace_event_call event_boot_call ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_event_call*,struct trace_boot_call*,struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  pre_initcalls_finished ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct trace_boot_call* FUNC3 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct ring_buffer_event* FUNC5 (struct ring_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer*,struct ring_buffer_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct boot_trace_call *bt, initcall_t fn)
{
	struct ftrace_event_call *call = &event_boot_call;
	struct ring_buffer_event *event;
	struct ring_buffer *buffer;
	struct trace_boot_call *entry;
	struct trace_array *tr = boot_trace;

	if (!tr || !pre_initcalls_finished)
		return;

	/* Get its name now since this function could
	 * disappear because it is in the .init section.
	 */
	FUNC4(bt->func, (unsigned long)fn);
	FUNC1();

	buffer = tr->buffer;
	event = FUNC5(buffer, TRACE_BOOT_CALL,
					  sizeof(*entry), 0, 0);
	if (!event)
		goto out;
	entry	= FUNC3(event);
	entry->boot_call = *bt;
	if (!FUNC0(call, entry, buffer, event))
		FUNC6(buffer, event, 0, 0);
 out:
	FUNC2();
}