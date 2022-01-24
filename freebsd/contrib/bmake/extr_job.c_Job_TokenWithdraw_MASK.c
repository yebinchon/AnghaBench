#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  outPipe; int /*<<< orphan*/  inPipe; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  JOB ; 
 int /*<<< orphan*/  TRUE ; 
 int aborting ; 
 int /*<<< orphan*/  debug_file ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 () ; 
 int jobTokensRunning ; 
 int maxJobs ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__ tokenWaitJob ; 
 scalar_t__ wantToken ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

Boolean
FUNC7(void)
{
    char tok, tok1;
    int count;

    wantToken = 0;
    if (FUNC0(JOB))
	FUNC2(debug_file, "Job_TokenWithdraw(%d): aborting %d, running %d\n",
		FUNC3(), aborting, jobTokensRunning);

    if (aborting || (jobTokensRunning >= maxJobs))
	return FALSE;

    count = FUNC4(tokenWaitJob.inPipe, &tok, 1);
    if (count == 0)
	FUNC1("eof on job pipe!");
    if (count < 0 && jobTokensRunning != 0) {
	if (errno != EAGAIN) {
	    FUNC1("job pipe read: %s", FUNC5(errno));
	}
	if (FUNC0(JOB))
	    FUNC2(debug_file, "(%d) blocked for token\n", FUNC3());
	return FALSE;
    }

    if (count == 1 && tok != '+') {
	/* make being abvorted - remove any other job tokens */
	if (FUNC0(JOB))
	    FUNC2(debug_file, "(%d) aborted by token %c\n", FUNC3(), tok);
	while (FUNC4(tokenWaitJob.inPipe, &tok1, 1) == 1)
	    continue;
	/* And put the stopper back */
	while (FUNC6(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
	    continue;
	FUNC1("A failure has been detected in another branch of the parallel make");
    }

    if (count == 1 && jobTokensRunning == 0)
	/* We didn't want the token really */
	while (FUNC6(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
	    continue;

    jobTokensRunning++;
    if (FUNC0(JOB))
	FUNC2(debug_file, "(%d) withdrew token\n", FUNC3());
    return TRUE;
}