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
 int /*<<< orphan*/  INT_A9_M2A_0 ; 
 int /*<<< orphan*/  INT_A9_M2A_5 ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	int r;
	FUNC3("smd_core_init()\n");

	r = FUNC4(INT_A9_M2A_0, smd_irq_handler,
			IRQF_TRIGGER_RISING, "smd_dev", 0);
	if (r < 0)
		return r;
	r = FUNC0(INT_A9_M2A_0);
	if (r < 0)
		FUNC2("smd_core_init: enable_irq_wake failed for A9_M2A_0\n");

	r = FUNC4(INT_A9_M2A_5, smsm_irq_handler,
			IRQF_TRIGGER_RISING, "smsm_dev", 0);
	if (r < 0) {
		FUNC1(INT_A9_M2A_0, 0);
		return r;
	}
	r = FUNC0(INT_A9_M2A_5);
	if (r < 0)
		FUNC2("smd_core_init: enable_irq_wake failed for A9_M2A_5\n");

	/* we may have missed a signal while booting -- fake
	 * an interrupt to make sure we process any existing
	 * state
	 */
	FUNC6(0, 0);

	FUNC3("smd_core_init() done\n");

	return 0;
}