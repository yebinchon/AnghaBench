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
struct ring_buffer_per_cpu {int /*<<< orphan*/  record_disabled; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer_iter*) ; 

void
FUNC2(struct ring_buffer_iter *iter)
{
	struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;

	FUNC0(&cpu_buffer->record_disabled);
	FUNC1(iter);
}