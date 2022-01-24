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
struct trace_array {struct ring_buffer* buffer; } ;
struct special_entry {unsigned long arg1; unsigned long arg2; unsigned long arg3; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_SPECIAL ; 
 struct ftrace_event_call event_special ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_event_call*,struct special_entry*,struct ring_buffer*,struct ring_buffer_event*) ; 
 struct special_entry* FUNC1 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC2 (struct ring_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer*,struct ring_buffer_event*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void *__tr,
		     unsigned long arg1, unsigned long arg2, unsigned long arg3,
		     int pc)
{
	struct ftrace_event_call *call = &event_special;
	struct ring_buffer_event *event;
	struct trace_array *tr = __tr;
	struct ring_buffer *buffer = tr->buffer;
	struct special_entry *entry;

	event = FUNC2(buffer, TRACE_SPECIAL,
					  sizeof(*entry), 0, pc);
	if (!event)
		return;
	entry	= FUNC1(event);
	entry->arg1			= arg1;
	entry->arg2			= arg2;
	entry->arg3			= arg3;

	if (!FUNC0(call, entry, buffer, event))
		FUNC3(buffer, event, 0, pc);
}