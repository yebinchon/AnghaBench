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
struct task_struct {int /*<<< orphan*/  state; int /*<<< orphan*/  prio; int /*<<< orphan*/  pid; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct ftrace_event_call {int dummy; } ;
struct ctx_switch_entry {int /*<<< orphan*/  next_cpu; int /*<<< orphan*/  next_state; int /*<<< orphan*/  next_prio; int /*<<< orphan*/  next_pid; int /*<<< orphan*/  prev_state; int /*<<< orphan*/  prev_prio; int /*<<< orphan*/  prev_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_WAKE ; 
 struct ftrace_event_call event_wakeup ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_event_call*,struct ctx_switch_entry*,struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer*,unsigned long,int) ; 
 struct ctx_switch_entry* FUNC3 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 struct ring_buffer_event* FUNC6 (struct ring_buffer*,int /*<<< orphan*/ ,int,unsigned long,int) ; 

void
FUNC7(struct trace_array *tr,
			   struct task_struct *wakee,
			   struct task_struct *curr,
			   unsigned long flags, int pc)
{
	struct ftrace_event_call *call = &event_wakeup;
	struct ring_buffer_event *event;
	struct ctx_switch_entry *entry;
	struct ring_buffer *buffer = tr->buffer;

	event = FUNC6(buffer, TRACE_WAKE,
					  sizeof(*entry), flags, pc);
	if (!event)
		return;
	entry	= FUNC3(event);
	entry->prev_pid			= curr->pid;
	entry->prev_prio		= curr->prio;
	entry->prev_state		= curr->state;
	entry->next_pid			= wakee->pid;
	entry->next_prio		= wakee->prio;
	entry->next_state		= wakee->state;
	entry->next_cpu			= FUNC5(wakee);

	if (!FUNC0(call, entry, buffer, event))
		FUNC4(buffer, event);
	FUNC1(tr->buffer, flags, 6, pc);
	FUNC2(tr->buffer, flags, pc);
}