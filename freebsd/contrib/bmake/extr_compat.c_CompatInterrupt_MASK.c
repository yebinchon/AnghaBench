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
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int SIGINT ; 
 int SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ compatChild ; 
 int compatSigno ; 
 int /*<<< orphan*/ * curTarg ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  myPid ; 

__attribute__((used)) static void
FUNC8(int signo)
{
    GNode   *gn;

    FUNC0(curTarg);

    if ((curTarg != NULL) && !FUNC4 (curTarg)) {
	/*
	 * Run .INTERRUPT only if hit with interrupt signal
	 */
	if (signo == SIGINT) {
	    gn = FUNC3(".INTERRUPT", TARG_NOCREATE);
	    if (gn != NULL) {
		FUNC1(gn, gn);
	    }
	}
    }
    if (signo == SIGQUIT)
	FUNC5(signo);
    /*
     * If there is a child running, pass the signal on
     * we will exist after it has exited.
     */
    compatSigno = signo;
    if (compatChild > 0) {
	FUNC2(compatChild, signo);
    } else {
	FUNC6(signo, SIG_DFL);
	FUNC7(myPid, signo);
    }
}