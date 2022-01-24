#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ made; } ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JOB_SPECIAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ jobTokensRunning ; 

__attribute__((used)) static void
FUNC9(GNode *targ)
{
#ifdef notyet
    /*
     * Unfortunately it is too complicated to run .BEGIN, .END,
     * and .INTERRUPT job in the parallel job module. This has
     * the nice side effect that it avoids a lot of other problems.
     */
    Lst lst = Lst_Init(FALSE);
    Lst_AtEnd(lst, targ);
    (void)Make_Run(lst);
    Lst_Destroy(lst, NULL);
    JobStart(targ, JOB_SPECIAL);
    while (jobTokensRunning) {
	Job_CatchOutput();
    }
#else
    FUNC0(targ, targ);
    if (targ->made == ERROR) {
	FUNC7(targ, "\n\nStop.");
	FUNC8(1);
    }
#endif
}