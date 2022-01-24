#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int flags; char* name; int cohort_num; int type; char* path; scalar_t__ unmade; int /*<<< orphan*/  children; struct TYPE_15__* cohorts; } ;
typedef  TYPE_1__* Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LST_CONCLINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAKE ; 
 int /*<<< orphan*/  MEMBER ; 
 int /*<<< orphan*/  MakeAddChild ; 
 int /*<<< orphan*/  MakeFindChild ; 
 int /*<<< orphan*/  MakeHandleUse ; 
 int /*<<< orphan*/  MakeUnmark ; 
 int OP_ARCHV ; 
 int OP_DOUBLEDEP ; 
 int OP_MADE ; 
 int REMAKE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,scalar_t__) ; 
 char* FUNC12 (char*,char) ; 

void
FUNC13(Lst targs)
{
    GNode  *gn;		/* a temporary pointer */
    Lst    examine; 	/* List of targets to examine */

    examine = FUNC5(targs, NULL);

    /*
     * Make an initial downward pass over the graph, marking nodes to be made
     * as we go down. We call Suff_FindDeps to find where a node is and
     * to get some children for it if it has none and also has no commands.
     * If the node is a leaf, we stick it on the toBeMade queue to
     * be looked at in a minute, otherwise we add its children to our queue
     * and go on about our business.
     */
    while (!FUNC7 (examine)) {
	gn = (GNode *)FUNC3(examine);
    
	if (gn->flags & REMAKE)
	    /* We've looked at this one already */
	    continue;
	gn->flags |= REMAKE;
	if (FUNC0(MAKE))
	    FUNC10(debug_file, "Make_ExpandUse: examine %s%d\n",
		    gn->name, gn->cohort_num);

	if ((gn->type & OP_DOUBLEDEP) && !FUNC7 (gn->cohorts)) {
	    /* Append all the 'cohorts' to the list of things to examine */
	    Lst new;
	    new = FUNC5(gn->cohorts, NULL);
	    FUNC2(new, examine, LST_CONCLINK);
	    examine = new;
	}

	/*
	 * Apply any .USE rules before looking for implicit dependencies
	 * to make sure everything has commands that should...
	 * Make sure that the TARGET is set, so that we can make
	 * expansions.
	 */
	if (gn->type & OP_ARCHV) {
	    char *eoa, *eon;
	    eoa = FUNC12(gn->name, '(');
	    eon = FUNC12(gn->name, ')');
	    if (eoa == NULL || eon == NULL)
		continue;
	    *eoa = '\0';
	    *eon = '\0';
	    FUNC9(MEMBER, eoa + 1, gn, 0);
	    FUNC9(ARCHIVE, gn->name, gn, 0);
	    *eoa = '(';
	    *eon = ')';
	}

	(void)FUNC1(gn, 0);
	FUNC9(TARGET, gn->path ? gn->path : gn->name, gn, 0);
	FUNC6(gn->children, MakeUnmark, gn);
	FUNC6(gn->children, MakeHandleUse, gn);

	if ((gn->type & OP_MADE) == 0)
	    FUNC8(gn);
	else {
	    /* Pretend we made all this node's children */
	    FUNC6(gn->children, MakeFindChild, gn);
	    if (gn->unmade != 0)
		    FUNC11("Warning: %s%s still has %d unmade children\n",
			    gn->name, gn->cohort_num, gn->unmade);
	}

	if (gn->unmade != 0)
	    FUNC6(gn->children, MakeAddChild, examine);
    }

    FUNC4(examine, NULL);
}