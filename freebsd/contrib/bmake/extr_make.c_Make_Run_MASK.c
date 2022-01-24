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
typedef  int Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAKE ; 
 int /*<<< orphan*/  MakePrintStatus ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ jobTokensRunning ; 
 scalar_t__ queryFlag ; 
 int /*<<< orphan*/  toBeMade ; 

Boolean
FUNC11(Lst targs)
{
    int	    	    errors; 	/* Number of errors the Job module reports */

    /* Start trying to make the current targets... */
    toBeMade = FUNC4(FALSE);

    FUNC7(targs);
    FUNC8(targs);

    if (FUNC0(MAKE)) {
	 FUNC10(debug_file, "#***# full graph\n");
	 FUNC9(1);
    }

    if (queryFlag) {
	/*
	 * We wouldn't do any work unless we could start some jobs in the
	 * next loop... (we won't actually start any, of course, this is just
	 * to see if any of the targets was out of date)
	 */
	return (FUNC6());
    }
    /*
     * Initialization. At the moment, no jobs are running and until some
     * get started, nothing will happen since the remaining upward
     * traversal of the graph is performed by the routines in job.c upon
     * the finishing of a job. So we fill the Job table as much as we can
     * before going into our loop.
     */
    (void)FUNC6();

    /*
     * Main Loop: The idea here is that the ending of jobs will take
     * care of the maintenance of data structures and the waiting for output
     * will cause us to be idle most of the time while our children run as
     * much as possible. Because the job table is kept as full as possible,
     * the only time when it will be empty is when all the jobs which need
     * running have been run, so that is the end condition of this loop.
     * Note that the Job module will exit if there were any errors unless the
     * keepgoing flag was given.
     */
    while (!FUNC5(toBeMade) || jobTokensRunning > 0) {
	FUNC1();
	(void)FUNC6();
    }

    errors = FUNC2();

    /*
     * Print the final status of each target. E.g. if it wasn't made
     * because some inferior reported an error.
     */
    if (FUNC0(MAKE))
	 FUNC10(debug_file, "done: errors %d\n", errors);
    if (errors == 0) {
	FUNC3(targs, MakePrintStatus, &errors);
	if (FUNC0(MAKE)) {
	    FUNC10(debug_file, "done: errors %d\n", errors);
	    if (errors)
		FUNC9(4);
	}
    }
    return errors != 0;
}