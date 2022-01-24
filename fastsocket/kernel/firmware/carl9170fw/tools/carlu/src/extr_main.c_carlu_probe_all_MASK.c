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
struct carlu {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct carlu**) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC1 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct carlu*) ; 
 struct carlu* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct carlu *carl[32] = { 0 };
	unsigned int devs;
	int ret;

	ret = FUNC3();
	if (ret)
		return EXIT_FAILURE;

	for (devs = 0; devs < FUNC0(carl); devs++) {
		carl[devs] = FUNC5();
		if (FUNC1(carl[devs]))
			break;
	}

	FUNC6("Found %d devices\n", devs);

	for (; devs > 0; devs--)
		FUNC4(carl[devs - 1]);

	FUNC2();
	return EXIT_SUCCESS;
}