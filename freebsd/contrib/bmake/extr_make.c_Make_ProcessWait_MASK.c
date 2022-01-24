#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; int type; char* name; int /*<<< orphan*/  children; int /*<<< orphan*/  cohorts; } ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int DONE_WAIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LST_CONCLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAKE ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int OP_DEPENDS ; 
 int OP_DOUBLEDEP ; 
 int OP_PHONY ; 
 int OP_WAIT ; 
 int REMAKE ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_1__* FUNC18 (char*) ; 
 int /*<<< orphan*/  add_wait_dep ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  link_parent ; 

__attribute__((used)) static void
FUNC20(Lst targs)
{
    GNode  *pgn;	/* 'parent' node we are examining */
    GNode  *cgn;	/* Each child in turn */
    LstNode owln;	/* Previous .WAIT node */
    Lst    examine; 	/* List of targets to examine */
    LstNode ln;

    /*
     * We need all the nodes to have a common parent in order for the
     * .WAIT and .ORDER scheduling to work.
     * Perhaps this should be done earlier...
     */

    pgn = FUNC18(".MAIN");
    pgn->flags = REMAKE;
    pgn->type = OP_PHONY | OP_DEPENDS;
    /* Get it displayed in the diag dumps */
    FUNC2(FUNC17(), pgn);

    FUNC10(targs, link_parent, pgn);

    /* Start building with the 'dummy' .MAIN' node */
    FUNC16(pgn, NULL);

    examine = FUNC12(FALSE);
    FUNC1(examine, pgn);

    while (!FUNC13 (examine)) {
	pgn = FUNC6(examine);
   
	/* We only want to process each child-list once */
	if (pgn->flags & DONE_WAIT)
	    continue;
	pgn->flags |= DONE_WAIT;
	if (FUNC0(MAKE))
	    FUNC19(debug_file, "Make_ProcessWait: examine %s\n", pgn->name);

	if ((pgn->type & OP_DOUBLEDEP) && !FUNC13 (pgn->cohorts)) {
	    /* Append all the 'cohorts' to the list of things to examine */
	    Lst new;
	    new = FUNC8(pgn->cohorts, NULL);
	    FUNC4(new, examine, LST_CONCLINK);
	    examine = new;
	}

	owln = FUNC9(pgn->children);
	FUNC15(pgn->children);
	for (; (ln = FUNC14(pgn->children)) != NULL; ) {
	    cgn = FUNC5(ln);
	    if (cgn->type & OP_WAIT) {
		/* Make the .WAIT node depend on the previous children */
		FUNC11(pgn->children, owln, add_wait_dep, cgn);
		owln = ln;
	    } else {
		FUNC1(examine, cgn);
	    }
	}
	FUNC3(pgn->children);
    }

    FUNC7(examine, NULL);
}