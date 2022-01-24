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
 int /*<<< orphan*/  GRAPH2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MAKEERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ jobsRunning ; 

void
FUNC5(void)
{
	if (jobsRunning)
		FUNC1();
	if (FUNC0(GRAPH2))
		FUNC2(2);
	FUNC3(MAKEERROR, 0);
	FUNC4(2);		/* Not 1, so -q can distinguish error */
}