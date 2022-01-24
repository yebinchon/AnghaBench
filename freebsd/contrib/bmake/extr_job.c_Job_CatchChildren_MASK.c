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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  WAIT_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int WNOHANG ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ jobTokensRunning ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC5(void)
{
    int    	  pid;	    	/* pid of dead child */
    WAIT_T	  status;   	/* Exit/termination status */

    /*
     * Don't even bother if we know there's no one around.
     */
    if (jobTokensRunning == 0)
	return;

    while ((pid = FUNC4((pid_t) -1, &status, WNOHANG | WUNTRACED)) > 0) {
	if (FUNC0(JOB)) {
	    (void)FUNC3(debug_file, "Process %d exited/stopped status %x.\n", pid,
	      FUNC2(status));
	}
	FUNC1(pid, status, TRUE);
    }
}