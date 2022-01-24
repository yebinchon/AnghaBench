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
struct ring_buffer_per_cpu {int /*<<< orphan*/  reader_lock; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 int FUNC4 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ring_buffer *buffer, int cpu)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	unsigned long flags;
	int dolock;
	int ret;

	if (!FUNC0(cpu, buffer->cpumask))
		return 1;

	dolock = FUNC3();

	cpu_buffer = buffer->buffers[cpu];
	FUNC2(flags);
	if (dolock)
		FUNC5(&cpu_buffer->reader_lock);
	ret = FUNC4(cpu_buffer);
	if (dolock)
		FUNC6(&cpu_buffer->reader_lock);
	FUNC1(flags);

	return ret;
}