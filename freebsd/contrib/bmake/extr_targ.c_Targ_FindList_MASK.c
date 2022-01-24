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
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int TARG_NOCREATE ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 

Lst
FUNC8(Lst names, int flags)
{
    Lst            nodes;	/* result list */
    LstNode	   ln;		/* name list element */
    GNode	   *gn;		/* node in tLn */
    char    	   *name;

    nodes = FUNC4(FALSE);

    if (FUNC6(names) == FAILURE) {
	return (nodes);
    }
    while ((ln = FUNC5(names)) != NULL) {
	name = (char *)FUNC3(ln);
	gn = FUNC7(name, flags);
	if (gn != NULL) {
	    /*
	     * Note: Lst_AtEnd must come before the Lst_Concat so the nodes
	     * are added to the list in the order in which they were
	     * encountered in the makefile.
	     */
	    (void)FUNC1(nodes, gn);
	} else if (flags == TARG_NOCREATE) {
	    FUNC0("\"%s\" -- target unknown.", name);
	}
    }
    FUNC2(names);
    return (nodes);
}