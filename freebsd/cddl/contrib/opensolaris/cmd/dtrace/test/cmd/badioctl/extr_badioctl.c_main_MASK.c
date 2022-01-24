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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  WEXITED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC10()
{
	pid_t child, parent = FUNC7();
	int status;

	for (;;) {
		if ((child = FUNC6()) == 0)
			FUNC3(parent);

		while (FUNC9(child, &status, WEXITED) != child)
			continue;

		if (FUNC1(status)) {
			/*
			 * Our child exited by design -- we'll exit with
			 * the same status code.
			 */
			FUNC4(FUNC0(status));
		}

		/*
		 * Our child died on a signal.  Respawn it.
		 */
		FUNC8("badioctl: child died on signal %d; respawning.\n",
		    FUNC2(status));
		FUNC5(stdout);
	}

	/* NOTREACHED */
	return (0);
}