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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_work ; 
 int /*<<< orphan*/  kmemleak_early_log ; 
 int /*<<< orphan*/  kmemleak_enabled ; 
 int /*<<< orphan*/  kmemleak_error ; 
 int /*<<< orphan*/  kmemleak_initialized ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* atomically check whether it was already invoked */
	if (FUNC0(&kmemleak_error, 0, 1))
		return;

	/* stop any memory operation tracing */
	FUNC2(&kmemleak_early_log, 0);
	FUNC2(&kmemleak_enabled, 0);

	/* check whether it is too early for a kernel thread */
	if (FUNC1(&kmemleak_initialized))
		FUNC4(&cleanup_work);

	FUNC3("Kernel memory leak detector disabled\n");
}