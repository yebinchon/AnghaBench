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
struct ring_buffer_per_cpu {int /*<<< orphan*/  record_disabled; int /*<<< orphan*/  reader_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  committing; } ;
struct ring_buffer {int /*<<< orphan*/  cpumask; struct ring_buffer_per_cpu** buffers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct ring_buffer *buffer, int cpu)
{
	struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
	unsigned long flags;

	if (!FUNC5(cpu, buffer->cpumask))
		return;

	FUNC4(&cpu_buffer->record_disabled);

	FUNC8(&cpu_buffer->reader_lock, flags);

	if (FUNC0(cpu_buffer, FUNC6(&cpu_buffer->committing)))
		goto out;

	FUNC1(&cpu_buffer->lock);

	FUNC7(cpu_buffer);

	FUNC2(&cpu_buffer->lock);

 out:
	FUNC9(&cpu_buffer->reader_lock, flags);

	FUNC3(&cpu_buffer->record_disabled);
}