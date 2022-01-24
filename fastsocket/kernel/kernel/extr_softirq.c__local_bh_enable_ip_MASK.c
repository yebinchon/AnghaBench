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
 scalar_t__ SOFTIRQ_DISABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static inline void FUNC14(unsigned long ip)
{
	FUNC0(FUNC4() || FUNC5());
#ifdef CONFIG_TRACE_IRQFLAGS
	local_irq_disable();
#endif
	/*
	 * Are softirqs going to be turned on now:
	 */
	if (FUNC10() == SOFTIRQ_DISABLE_OFFSET)
		FUNC12(ip);
	/*
	 * Keep preemption disabled until we are done with
	 * softirq processing:
 	 */
	FUNC11(SOFTIRQ_DISABLE_OFFSET - 1);

	if (FUNC13(!FUNC3() && FUNC8()))
		FUNC2();

	FUNC1();
#ifdef CONFIG_TRACE_IRQFLAGS
	local_irq_enable();
#endif
	FUNC9();
}