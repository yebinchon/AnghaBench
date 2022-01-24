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
struct ring_buffer_per_cpu {int /*<<< orphan*/  committing; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  rb_need_resched ; 
 scalar_t__ FUNC9 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC10 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct ring_buffer *buffer,
				struct ring_buffer_event *event)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	int cpu;

	/* The event is discarded regardless */
	FUNC8(event);

	cpu = FUNC11();
	cpu_buffer = buffer->buffers[cpu];

	/*
	 * This must only be called if the event has not been
	 * committed yet. Thus we can assume that preemption
	 * is still disabled.
	 */
	FUNC0(buffer, !FUNC2(&cpu_buffer->committing));

	FUNC6(cpu_buffer, event);
	if (FUNC9(cpu_buffer, event))
		goto out;

	/*
	 * The commit is still visible by the reader, so we
	 * must still update the timestamp.
	 */
	FUNC10(cpu_buffer, event);
 out:
	FUNC7(cpu_buffer);

	FUNC12();

	/*
	 * Only the last preempt count needs to restore preemption.
	 */
	if (FUNC4() == 1)
		FUNC1(FUNC3(rb_need_resched, cpu));
	else
		FUNC5();

}