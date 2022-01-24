#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ made; char* name; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 scalar_t__ ABORTED ; 
 scalar_t__ CompatInterrupt ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* ENDNode ; 
 scalar_t__ ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_SPECIAL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  TARG_CREATE ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 TYPE_1__* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ UPTODATE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  queryFlag ; 
 int /*<<< orphan*/  shellName ; 

void
FUNC10(Lst targs)
{
    GNode   	  *gn = NULL;/* Current root target */
    int	    	  errors;   /* Number of targets not remade due to errors */

    if (!shellName)
	FUNC5();

    if (FUNC7(SIGINT, SIG_IGN) != SIG_IGN) {
	FUNC7(SIGINT, CompatInterrupt);
    }
    if (FUNC7(SIGTERM, SIG_IGN) != SIG_IGN) {
	FUNC7(SIGTERM, CompatInterrupt);
    }
    if (FUNC7(SIGHUP, SIG_IGN) != SIG_IGN) {
	FUNC7(SIGHUP, CompatInterrupt);
    }
    if (FUNC7(SIGQUIT, SIG_IGN) != SIG_IGN) {
	FUNC7(SIGQUIT, CompatInterrupt);
    }

    ENDNode = FUNC6(".END", TARG_CREATE);
    ENDNode->type = OP_SPECIAL;
    /*
     * If the user has defined a .BEGIN target, execute the commands attached
     * to it.
     */
    if (!queryFlag) {
	gn = FUNC6(".BEGIN", TARG_NOCREATE);
	if (gn != NULL) {
	    FUNC0(gn, gn);
            if (gn->made == ERROR) {
                FUNC4(gn, "\nStop.");
                FUNC8(1);
            }
	}
    }

    /*
     * Expand .USE nodes right now, because they can modify the structure
     * of the tree.
     */
    FUNC3(targs);

    /*
     * For each entry in the list of targets to create, call Compat_Make on
     * it to create the thing. Compat_Make will leave the 'made' field of gn
     * in one of several states:
     *	    UPTODATE	    gn was already up-to-date
     *	    MADE  	    gn was recreated successfully
     *	    ERROR 	    An error occurred while gn was being created
     *	    ABORTED	    gn was not remade because one of its inferiors
     *	    	  	    could not be made due to errors.
     */
    errors = 0;
    while (!FUNC2 (targs)) {
	gn = (GNode *)FUNC1(targs);
	FUNC0(gn, gn);

	if (gn->made == UPTODATE) {
	    FUNC9("`%s' is up to date.\n", gn->name);
	} else if (gn->made == ABORTED) {
	    FUNC9("`%s' not remade because of errors.\n", gn->name);
	    errors += 1;
	}
    }

    /*
     * If the user has defined a .END target, run its commands.
     */
    if (errors == 0) {
	FUNC0(ENDNode, ENDNode);
	if (gn->made == ERROR) {
	    FUNC4(gn, "\nStop.");
	    FUNC8(1);
	}
    }
}