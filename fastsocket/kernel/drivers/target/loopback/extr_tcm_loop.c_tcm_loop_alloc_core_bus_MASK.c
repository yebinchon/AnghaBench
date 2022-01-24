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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcm_loop_driverfs ; 
 int /*<<< orphan*/  tcm_loop_lld_bus ; 
 int /*<<< orphan*/  tcm_loop_primary ; 

__attribute__((used)) static int FUNC9(void)
{
	int ret;

	tcm_loop_primary = FUNC7("tcm_loop_0");
	if (FUNC0(tcm_loop_primary)) {
		FUNC6("Unable to allocate tcm_loop_primary\n");
		return FUNC1(tcm_loop_primary);
	}

	ret = FUNC2(&tcm_loop_lld_bus);
	if (ret) {
		FUNC6("bus_register() failed for tcm_loop_lld_bus\n");
		goto dev_unreg;
	}

	ret = FUNC4(&tcm_loop_driverfs);
	if (ret) {
		FUNC6("driver_register() failed for"
				"tcm_loop_driverfs\n");
		goto bus_unreg;
	}

	FUNC5("Initialized TCM Loop Core Bus\n");
	return ret;

bus_unreg:
	FUNC3(&tcm_loop_lld_bus);
dev_unreg:
	FUNC8(tcm_loop_primary);
	return ret;
}