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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int) ; 

int FUNC5(void)
{
	int error;

	FUNC3("Freezing user space processes ... ");
	error = FUNC4(true);
	if (error)
		goto Exit;
	FUNC3("done.\n");

	FUNC3("Freezing remaining freezable tasks ... ");
	error = FUNC4(false);
	if (error)
		goto Exit;
	FUNC3("done.");

	FUNC2();
 Exit:
	FUNC0(FUNC1());
	FUNC3("\n");

	return error;
}