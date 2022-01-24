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

/* Variables and functions */
 size_t ABORT_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  JOB ; 
 char* JOB_TOKENS ; 
 int /*<<< orphan*/  Job_error_token ; 
 size_t aborting ; 
 int /*<<< orphan*/  debug_file ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,size_t,char) ; 
 int FUNC2 () ; 
 scalar_t__ jobTokensRunning ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ tokenWaitJob ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
    char tok = JOB_TOKENS[aborting], tok1;

    if (!Job_error_token && aborting == ABORT_ERROR) {
	if (jobTokensRunning == 0)
	    return;
	tok = '+';			/* no error token */
    }

    /* If we are depositing an error token flush everything else */
    while (tok != '+' && FUNC3(tokenWaitJob.inPipe, &tok1, 1) == 1)
	continue;

    if (FUNC0(JOB))
	FUNC1(debug_file, "(%d) aborting %zu, deposit token %c\n",
	    FUNC2(), aborting, tok);
    while (FUNC4(tokenWaitJob.outPipe, &tok, 1) == -1 && errno == EAGAIN)
	continue;
}