#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int type; char* name; int /*<<< orphan*/  parents; int /*<<< orphan*/  children; int /*<<< orphan*/  unmade; int /*<<< orphan*/  order_succ; int /*<<< orphan*/  order_pred; } ;
typedef  int /*<<< orphan*/  LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OP_ARCHV ; 
 int OP_WAIT ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TARG_CREATE ; 
 TYPE_1__* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int VARF_UNDEFERR ; 
 int VARF_WANTRES ; 
 char* FUNC14 (char*,TYPE_1__*,int,int*,void**) ; 
 char* FUNC15 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char) ; 
 char* var_Error ; 

__attribute__((used)) static void
FUNC19(LstNode cln, GNode *pgn)
{
    GNode   	*cgn = (GNode *)FUNC3(cln);
    GNode	*gn;	    /* New source 8) */
    char	*cp;	    /* Expanded value */

    if (!FUNC8(cgn->order_pred) || !FUNC8(cgn->order_succ))
	/* It is all too hard to process the result of .ORDER */
	return;

    if (cgn->type & OP_WAIT)
	/* Ignore these (& OP_PHONY ?) */
	return;

    /*
     * First do variable expansion -- this takes precedence over
     * wildcard expansion. If the result contains wildcards, they'll be gotten
     * to later since the resulting words are tacked on to the end of
     * the children list.
     */
    if (FUNC18(cgn->name, '$') == NULL) {
	FUNC12(cln, pgn);
	return;
    }

    if (FUNC1(SUFF)) {
	FUNC16(debug_file, "Expanding \"%s\"...", cgn->name);
    }
    cp = FUNC15(NULL, cgn->name, pgn, VARF_UNDEFERR|VARF_WANTRES);

    if (cp != NULL) {
	Lst	    members = FUNC6(FALSE);

	if (cgn->type & OP_ARCHV) {
	    /*
	     * Node was an archive(member) target, so we want to call
	     * on the Arch module to find the nodes for us, expanding
	     * variables in the parent's context.
	     */
	    char	*sacrifice = cp;

	    (void)FUNC0(&sacrifice, members, pgn);
	} else {
	    /*
	     * Break the result into a vector of strings whose nodes
	     * we can find, then add those nodes to the members list.
	     * Unfortunately, we can't use brk_string b/c it
	     * doesn't understand about variable specifications with
	     * spaces in them...
	     */
	    char	    *start;
	    char	    *initcp = cp;   /* For freeing... */

	    for (start = cp; *start == ' ' || *start == '\t'; start++)
		continue;
	    for (cp = start; *cp != '\0'; cp++) {
		if (*cp == ' ' || *cp == '\t') {
		    /*
		     * White-space -- terminate element, find the node,
		     * add it, skip any further spaces.
		     */
		    *cp++ = '\0';
		    gn = FUNC13(start, TARG_CREATE);
		    (void)FUNC2(members, gn);
		    while (*cp == ' ' || *cp == '\t') {
			cp++;
		    }
		    /*
		     * Adjust cp for increment at start of loop, but
		     * set start to first non-space.
		     */
		    start = cp--;
		} else if (*cp == '$') {
		    /*
		     * Start of a variable spec -- contact variable module
		     * to find the end so we can skip over it.
		     */
		    char	*junk;
		    int 	len;
		    void	*freeIt;

		    junk = FUNC14(cp, pgn, VARF_UNDEFERR|VARF_WANTRES,
			&len, &freeIt);
		    if (junk != var_Error) {
			cp += len - 1;
		    }

		    FUNC17(freeIt);
		} else if (*cp == '\\' && cp[1] != '\0') {
		    /*
		     * Escaped something -- skip over it
		     */
		    cp++;
		}
	    }

	    if (cp != start) {
		/*
		 * Stuff left over -- add it to the list too
		 */
		gn = FUNC13(start, TARG_CREATE);
		(void)FUNC2(members, gn);
	    }
	    /*
	     * Point cp back at the beginning again so the variable value
	     * can be freed.
	     */
	    cp = initcp;
	}

	/*
	 * Add all elements of the members list to the parent node.
	 */
	while(!FUNC8(members)) {
	    gn = (GNode *)FUNC4(members);

	    if (FUNC1(SUFF)) {
		FUNC16(debug_file, "%s...", gn->name);
	    }
	    /* Add gn to the parents child list before the original child */
	    (void)FUNC7(pgn->children, cln, gn);
	    (void)FUNC2(gn->parents, pgn);
	    pgn->unmade++;
	    /* Expand wildcards on new node */
	    FUNC12(FUNC10(cln), pgn);
	}
	FUNC5(members, NULL);

	/*
	 * Free the result
	 */
	FUNC17(cp);
    }
    if (FUNC1(SUFF)) {
	FUNC16(debug_file, "\n");
    }

    /*
     * Now the source is expanded, remove it from the list of children to
     * keep it from being processed.
     */
    pgn->unmade--;
    FUNC11(pgn->children, cln);
    FUNC11(cgn->parents, FUNC9(cgn->parents, pgn));
}