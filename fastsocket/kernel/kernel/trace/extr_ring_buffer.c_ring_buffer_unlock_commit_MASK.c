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
struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  rb_need_resched ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct ring_buffer *buffer,
			      struct ring_buffer_event *event)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	int cpu = FUNC4();

	cpu_buffer = buffer->buffers[cpu];

	FUNC5(cpu_buffer, event);

	FUNC6();

	/*
	 * Only the last preempt count needs to restore preemption.
	 */
	if (FUNC2() == 1)
		FUNC0(FUNC1(rb_need_resched, cpu));
	else
		FUNC3();

	return 0;
}