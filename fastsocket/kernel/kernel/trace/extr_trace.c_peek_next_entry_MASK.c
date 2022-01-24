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
typedef  int /*<<< orphan*/  u64 ;
struct trace_iterator {TYPE_1__* tr; struct ring_buffer_iter** buffer_iter; } ;
struct trace_entry {int dummy; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct trace_entry* FUNC2 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC3 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 
 struct ring_buffer_event* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct trace_entry *
FUNC5(struct trace_iterator *iter, int cpu, u64 *ts)
{
	struct ring_buffer_event *event;
	struct ring_buffer_iter *buf_iter = iter->buffer_iter[cpu];

	/* Don't allow ftrace to trace into the ring buffers */
	FUNC0();

	if (buf_iter)
		event = FUNC3(buf_iter, ts);
	else
		event = FUNC4(iter->tr->buffer, cpu, ts);

	FUNC1();

	return event ? FUNC2(event) : NULL;
}