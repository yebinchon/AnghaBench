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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int volatile*) ; 

int
FUNC4(int argc, char **argv)
{
	volatile int a = 0;

	while (FUNC3(&a) == 0)
		continue;

	if (FUNC2() == 0) {
		int ret = FUNC1();
		(void) FUNC0(ret);
	}

	return (0);
}