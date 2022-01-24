#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int unmade; char* name; int /*<<< orphan*/  iParents; int /*<<< orphan*/  children; int /*<<< orphan*/  parents; } ;
struct TYPE_11__ {char* name; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  TYPE_2__ GNode ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SuffGNHasNameP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transforms ; 

__attribute__((used)) static Boolean
FUNC11(GNode *tGn, GNode *sGn, Suff *t, Suff *s)
{
    LstNode 	ln, nln;    /* General node */
    char    	*tname;	    /* Name of transformation rule */
    GNode   	*gn;	    /* Node for same */

    /*
     * Form the proper links between the target and source.
     */
    (void)FUNC1(tGn->children, sGn);
    (void)FUNC1(sGn->parents, tGn);
    tGn->unmade += 1;

    /*
     * Locate the transformation rule itself
     */
    tname = FUNC10(s->name, t->name, 0);
    ln = FUNC3(transforms, tname, SuffGNHasNameP);
    FUNC9(tname);

    if (ln == NULL) {
	/*
	 * Not really such a transformation rule (can happen when we're
	 * called to link an OP_MEMBER and OP_ARCHV node), so return
	 * FALSE.
	 */
	return(FALSE);
    }

    gn = (GNode *)FUNC2(ln);

    if (FUNC0(SUFF)) {
	FUNC8(debug_file, "\tapplying %s -> %s to \"%s\"\n", s->name, t->name, tGn->name);
    }

    /*
     * Record last child for expansion purposes
     */
    ln = FUNC4(tGn->children);

    /*
     * Pass the buck to Make_HandleUse to apply the rule
     */
    (void)FUNC6(gn, tGn);

    /*
     * Deal with wildcards and variables in any acquired sources
     */
    for (ln = FUNC5(ln); ln != NULL; ln = nln) {
	nln = FUNC5(ln);
	FUNC7(ln, tGn);
    }

    /*
     * Keep track of another parent to which this beast is transformed so
     * the .IMPSRC variable can be set correctly for the parent.
     */
    (void)FUNC1(sGn->iParents, tGn);

    return(TRUE);
}