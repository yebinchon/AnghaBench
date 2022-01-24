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
typedef  scalar_t__ u64 ;
struct trace_iterator {struct trace_array* tr; struct ring_buffer_iter** buffer_iter; } ;
struct trace_array {scalar_t__ time_start; TYPE_1__** data; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {unsigned long skipped_entries; } ;

/* Variables and functions */
 struct ring_buffer_event* FUNC0 (struct ring_buffer_iter*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct trace_iterator *iter, int cpu)
{
	struct trace_array *tr = iter->tr;
	struct ring_buffer_event *event;
	struct ring_buffer_iter *buf_iter;
	unsigned long entries = 0;
	u64 ts;

	tr->data[cpu]->skipped_entries = 0;

	if (!iter->buffer_iter[cpu])
		return;

	buf_iter = iter->buffer_iter[cpu];
	FUNC1(buf_iter);

	/*
	 * We could have the case with the max latency tracers
	 * that a reset never took place on a cpu. This is evident
	 * by the timestamp being before the start of the buffer.
	 */
	while ((event = FUNC0(buf_iter, &ts))) {
		if (ts >= iter->tr->time_start)
			break;
		entries++;
		FUNC2(buf_iter, NULL);
	}

	tr->data[cpu]->skipped_entries = entries;
}