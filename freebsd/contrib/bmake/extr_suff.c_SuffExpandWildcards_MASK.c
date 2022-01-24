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
struct TYPE_8__ {int /*<<< orphan*/  parents; int /*<<< orphan*/  children; int /*<<< orphan*/  unmade; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  TARG_CREATE ; 
 TYPE_1__* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC15(LstNode cln, GNode *pgn)
{
    GNode   	*cgn = (GNode *)FUNC4(cln);
    GNode	*gn;	    /* New source 8) */
    char	*cp;	    /* Expanded value */
    Lst 	explist;    /* List of expansions */

    if (!FUNC2(cgn->name))
	return;

    /*
     * Expand the word along the chosen path
     */
    explist = FUNC7(FALSE);
    FUNC1(cgn->name, FUNC12(cgn), explist);

    while (!FUNC9(explist)) {
	/*
	 * Fetch next expansion off the list and find its GNode
	 */
	cp = (char *)FUNC5(explist);

	if (FUNC0(SUFF)) {
	    FUNC14(debug_file, "%s...", cp);
	}
	gn = FUNC13(cp, TARG_CREATE);

	/* Add gn to the parents child list before the original child */
	(void)FUNC8(pgn->children, cln, gn);
	(void)FUNC3(gn->parents, pgn);
	pgn->unmade++;
    }

    /*
     * Nuke what's left of the list
     */
    FUNC6(explist, NULL);

    if (FUNC0(SUFF)) {
	FUNC14(debug_file, "\n");
    }

    /*
     * Now the source is expanded, remove it from the list of children to
     * keep it from being processed.
     */
    pgn->unmade--;
    FUNC11(pgn->children, cln);
    FUNC11(cgn->parents, FUNC10(cgn->parents, pgn));
}