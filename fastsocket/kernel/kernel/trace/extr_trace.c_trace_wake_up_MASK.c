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

/* Variables and functions */
 int TRACE_ITER_BLOCK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int trace_flags ; 
 int /*<<< orphan*/  trace_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	int cpu;

	if (trace_flags & TRACE_ITER_BLOCK)
		return;
	/*
	 * The runqueue_is_locked() can fail, but this is the best we
	 * have for now:
	 */
	cpu = FUNC0();
	if (!FUNC2(cpu))
		FUNC3(&trace_wait);
	FUNC1();
}