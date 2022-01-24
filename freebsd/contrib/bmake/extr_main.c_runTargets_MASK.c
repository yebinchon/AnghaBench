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
typedef  int /*<<< orphan*/  Lst ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  TARG_CREATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compatMake ; 
 int /*<<< orphan*/  create ; 
 int /*<<< orphan*/  jobsRunning ; 
 int /*<<< orphan*/  queryFlag ; 

__attribute__((used)) static Boolean
FUNC7(void)
{
	Lst targs;	/* target nodes to create -- passed to Make_Init */
	Boolean outOfDate; 	/* FALSE if all targets up to date */

	/*
	 * Have now read the entire graph and need to make a list of
	 * targets to create. If none was given on the command line,
	 * we consult the parsing module to find the main target(s)
	 * to create.
	 */
	if (FUNC3(create))
		targs = FUNC5();
	else
		targs = FUNC6(create, TARG_CREATE);

	if (!compatMake) {
		/*
		 * Initialize job module before traversing the graph
		 * now that any .BEGIN and .END targets have been read.
		 * This is done only if the -q flag wasn't given
		 * (to prevent the .BEGIN from being executed should
		 * it exist).
		 */
		if (!queryFlag) {
			FUNC1();
			jobsRunning = TRUE;
		}

		/* Traverse the graph, checking on all the targets */
		outOfDate = FUNC4(targs);
	} else {
		/*
		 * Compat_Init will take care of creating all the
		 * targets as well as initializing the module.
		 */
		FUNC0(targs);
		outOfDate = FALSE;
	}
	FUNC2(targs, NULL);
	return outOfDate;
}