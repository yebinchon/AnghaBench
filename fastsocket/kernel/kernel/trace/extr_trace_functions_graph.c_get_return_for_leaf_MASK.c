#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct trace_iterator {size_t cpu; TYPE_1__* tr; struct ring_buffer_iter** buffer_iter; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_10__ {scalar_t__ func; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ pid; } ;
struct ftrace_graph_ret_entry {TYPE_5__ ret; TYPE_3__ ent; } ;
struct TYPE_9__ {scalar_t__ func; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct ftrace_graph_ent_entry {TYPE_4__ graph_ent; TYPE_2__ ent; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 scalar_t__ TRACE_GRAPH_RET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 struct ftrace_graph_ret_entry* FUNC1 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC2 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 
 struct ring_buffer_event* FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ftrace_graph_ret_entry *
FUNC5(struct trace_iterator *iter,
		struct ftrace_graph_ent_entry *curr)
{
	struct ring_buffer_iter *ring_iter;
	struct ring_buffer_event *event;
	struct ftrace_graph_ret_entry *next;

	ring_iter = iter->buffer_iter[iter->cpu];

	/* First peek to compare current entry and the next one */
	if (ring_iter)
		event = FUNC2(ring_iter, NULL);
	else {
	/* We need to consume the current entry to see the next one */
		FUNC0(iter->tr->buffer, iter->cpu, NULL);
		event = FUNC3(iter->tr->buffer, iter->cpu,
					NULL);
	}

	if (!event)
		return NULL;

	next = FUNC1(event);

	if (next->ent.type != TRACE_GRAPH_RET)
		return NULL;

	if (curr->ent.pid != next->ent.pid ||
			curr->graph_ent.func != next->ret.func)
		return NULL;

	/* this is a leaf, now advance the iterator */
	if (ring_iter)
		FUNC4(ring_iter, NULL);

	return next;
}