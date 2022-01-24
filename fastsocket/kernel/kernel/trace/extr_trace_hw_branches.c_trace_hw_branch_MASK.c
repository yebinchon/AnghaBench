#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct trace_array {TYPE_1__** data; struct ring_buffer* buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct hw_branch_entry {void* to; void* from; TYPE_2__ ent; } ;
struct ftrace_event_call {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_HW_BRANCHES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct ftrace_event_call event_hw_branch ; 
 int /*<<< orphan*/  FUNC2 (struct ftrace_event_call*,struct hw_branch_entry*,struct ring_buffer*,struct ring_buffer_event*) ; 
 struct trace_array* hw_branch_trace ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 struct hw_branch_entry* FUNC6 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC7 (struct ring_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer*,struct ring_buffer_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_hw_branches_enabled ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(u64 from, u64 to)
{
	struct ftrace_event_call *call = &event_hw_branch;
	struct trace_array *tr = hw_branch_trace;
	struct ring_buffer_event *event;
	struct ring_buffer *buf;
	struct hw_branch_entry *entry;
	unsigned long irq1;
	int cpu;

	if (FUNC10(!tr))
		return;

	if (FUNC10(!trace_hw_branches_enabled))
		return;

	FUNC4(irq1);
	cpu = FUNC5();
	if (FUNC1(&tr->data[cpu]->disabled) != 1)
		goto out;

	buf = tr->buffer;
	event = FUNC7(buf, TRACE_HW_BRANCHES,
					  sizeof(*entry), 0, 0);
	if (!event)
		goto out;
	entry	= FUNC6(event);
	FUNC9(&entry->ent, 0, from);
	entry->ent.type = TRACE_HW_BRANCHES;
	entry->from = from;
	entry->to   = to;
	if (!FUNC2(call, entry, buf, event))
		FUNC8(buf, event, 0, 0);

 out:
	FUNC0(&tr->data[cpu]->disabled);
	FUNC3(irq1);
}