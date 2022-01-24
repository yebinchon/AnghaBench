#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trace_array {int /*<<< orphan*/  buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct kmemtrace_free_entry {int type_id; unsigned long call_site; void const* ptr; TYPE_1__ ent; } ;
struct ftrace_event_call {int dummy; } ;
typedef  enum kmemtrace_type_id { ____Placeholder_kmemtrace_type_id } kmemtrace_type_id ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_KMEM_FREE ; 
 struct ftrace_event_call event_kmem_free ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_event_call*,struct kmemtrace_free_entry*,int /*<<< orphan*/ ,struct ring_buffer_event*) ; 
 struct trace_array* kmemtrace_array ; 
 struct kmemtrace_free_entry* FUNC1 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(enum kmemtrace_type_id type_id,
				  unsigned long call_site,
				  const void *ptr)
{
	struct ftrace_event_call *call = &event_kmem_free;
	struct trace_array *tr = kmemtrace_array;
	struct kmemtrace_free_entry *entry;
	struct ring_buffer_event *event;

	event = FUNC2(tr->buffer, sizeof(*entry));
	if (!event)
		return;
	entry	= FUNC1(event);
	FUNC5(&entry->ent, 0, 0);

	entry->ent.type		= TRACE_KMEM_FREE;
	entry->type_id		= type_id;
	entry->call_site	= call_site;
	entry->ptr		= ptr;

	if (!FUNC0(call, entry, tr->buffer, event))
		FUNC3(tr->buffer, event);

	FUNC4();
}