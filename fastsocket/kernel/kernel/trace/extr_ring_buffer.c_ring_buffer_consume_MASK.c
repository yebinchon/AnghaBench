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
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*) ; 
 struct ring_buffer_event* FUNC6 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct ring_buffer_event *
FUNC10(struct ring_buffer *buffer, int cpu, u64 *ts)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event = NULL;
	unsigned long flags;
	int dolock;

	dolock = FUNC7();

 again:
	/* might be called in atomic */
	FUNC3();

	if (!FUNC0(cpu, buffer->cpumask))
		goto out;

	cpu_buffer = buffer->buffers[cpu];
	FUNC2(flags);
	if (dolock)
		FUNC8(&cpu_buffer->reader_lock);

	event = FUNC6(cpu_buffer, ts);
	if (event)
		FUNC5(cpu_buffer);

	if (dolock)
		FUNC9(&cpu_buffer->reader_lock);
	FUNC1(flags);

 out:
	FUNC4();

	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		goto again;

	return event;
}