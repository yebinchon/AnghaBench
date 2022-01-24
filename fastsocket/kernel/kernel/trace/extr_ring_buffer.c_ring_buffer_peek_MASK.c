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
typedef  int /*<<< orphan*/  u64 ;
struct ring_buffer_per_cpu {int /*<<< orphan*/  reader_lock; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;
struct ring_buffer {int /*<<< orphan*/  cpumask; struct ring_buffer_per_cpu** buffers; } ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_per_cpu*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct ring_buffer_event *
FUNC8(struct ring_buffer *buffer, int cpu, u64 *ts)
{
	struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
	struct ring_buffer_event *event;
	unsigned long flags;
	int dolock;

	if (!FUNC0(cpu, buffer->cpumask))
		return NULL;

	dolock = FUNC5();
 again:
	FUNC2(flags);
	if (dolock)
		FUNC6(&cpu_buffer->reader_lock);
	event = FUNC4(cpu_buffer, ts);
	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		FUNC3(cpu_buffer);
	if (dolock)
		FUNC7(&cpu_buffer->reader_lock);
	FUNC1(flags);

	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		goto again;

	return event;
}