#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobarg ;
struct TYPE_3__ {int inPipe; int outPipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MAKEFLAGS ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 
 TYPE_1__ tokenWaitJob ; 

void
FUNC5(int max_tokens, int jp_0, int jp_1)
{
    int i;
    char jobarg[64];
    
    if (jp_0 >= 0 && jp_1 >= 0) {
	/* Pipe passed in from parent */
	tokenWaitJob.inPipe = jp_0;
	tokenWaitJob.outPipe = jp_1;
	(void)FUNC3(jp_0, F_SETFD, FD_CLOEXEC);
	(void)FUNC3(jp_1, F_SETFD, FD_CLOEXEC);
	return;
    }

    FUNC0(&tokenWaitJob, 15);

    FUNC4(jobarg, sizeof(jobarg), "%d,%d",
	    tokenWaitJob.inPipe, tokenWaitJob.outPipe);

    FUNC2(MAKEFLAGS, "-J", VAR_GLOBAL);
    FUNC2(MAKEFLAGS, jobarg, VAR_GLOBAL);			

    /*
     * Preload the job pipe with one token per job, save the one
     * "extra" token for the primary job.
     * 
     * XXX should clip maxJobs against PIPE_BUF -- if max_tokens is
     * larger than the write buffer size of the pipe, we will
     * deadlock here.
     */
    for (i = 1; i < max_tokens; i++)
	FUNC1();
}