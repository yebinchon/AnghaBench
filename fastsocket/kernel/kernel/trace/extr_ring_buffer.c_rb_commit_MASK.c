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
struct ring_buffer_per_cpu {int /*<<< orphan*/  entries; } ;
struct ring_buffer_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 

__attribute__((used)) static void FUNC3(struct ring_buffer_per_cpu *cpu_buffer,
		      struct ring_buffer_event *event)
{
	FUNC0(&cpu_buffer->entries);
	FUNC2(cpu_buffer, event);
	FUNC1(cpu_buffer);
}