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
struct ring_buffer_per_cpu {int /*<<< orphan*/  reader_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  record_disabled; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ring_buffer_iter* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

struct ring_buffer_iter *
FUNC9(struct ring_buffer *buffer, int cpu)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_iter *iter;
	unsigned long flags;

	if (!FUNC3(cpu, buffer->cpumask))
		return NULL;

	iter = FUNC4(sizeof(*iter), GFP_KERNEL);
	if (!iter)
		return NULL;

	cpu_buffer = buffer->buffers[cpu];

	iter->cpu_buffer = cpu_buffer;

	FUNC2(&cpu_buffer->record_disabled);
	FUNC8();

	FUNC6(&cpu_buffer->reader_lock, flags);
	FUNC0(&cpu_buffer->lock);
	FUNC5(iter);
	FUNC1(&cpu_buffer->lock);
	FUNC7(&cpu_buffer->reader_lock, flags);

	return iter;
}