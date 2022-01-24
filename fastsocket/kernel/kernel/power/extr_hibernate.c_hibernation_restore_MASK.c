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
 int /*<<< orphan*/  PMSG_QUIESCE ; 
 int /*<<< orphan*/  PMSG_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int platform_mode)
{
	int error;

	FUNC2();
	FUNC8();
	FUNC5();
	error = FUNC1(PMSG_QUIESCE);
	if (!error) {
		error = FUNC7(platform_mode);
		FUNC0(PMSG_RECOVER);
	}
	FUNC4();
	FUNC6();
	FUNC3();
	return error;
}