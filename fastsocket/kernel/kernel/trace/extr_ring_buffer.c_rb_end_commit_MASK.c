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
struct ring_buffer_per_cpu {int /*<<< orphan*/  committing; int /*<<< orphan*/  commits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ring_buffer_per_cpu *cpu_buffer)
{
	unsigned long commits;

	if (FUNC0(cpu_buffer,
		       !FUNC4(&cpu_buffer->committing)))
		return;

 again:
	commits = FUNC4(&cpu_buffer->commits);
	/* synchronize with interrupts */
	FUNC1();
	if (FUNC4(&cpu_buffer->committing) == 1)
		FUNC5(cpu_buffer);

	FUNC2(&cpu_buffer->committing);

	/* synchronize with interrupts */
	FUNC1();

	/*
	 * Need to account for interrupts coming in between the
	 * updating of the commit page and the clearing of the
	 * committing counter.
	 */
	if (FUNC6(FUNC4(&cpu_buffer->commits) != commits) &&
	    !FUNC4(&cpu_buffer->committing)) {
		FUNC3(&cpu_buffer->committing);
		goto again;
	}
}