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
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  scalar_t__ ReturnStatus ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FAILURE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  OP_ARCHV ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  TARG_CREATE ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int VARF_UNDEFERR ; 
 int VARF_WANTRES ; 
 char* FUNC8 (char*,TYPE_1__*,int,int*,void**) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 char* FUNC10 (size_t) ; 
 char* FUNC11 (char*,size_t) ; 
 int /*<<< orphan*/  dirSearchPath ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (unsigned char) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC16 (char*,char) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int FUNC18 (char*) ; 
 char* var_Error ; 

ReturnStatus
FUNC19(char **linePtr, Lst nodeLst, GNode *ctxt)
{
    char	    *cp;	    /* Pointer into line */
    GNode	    *gn;     	    /* New node */
    char	    *libName;  	    /* Library-part of specification */
    char	    *memName;  	    /* Member-part of specification */
    char	    *nameBuf;	    /* temporary place for node name */
    char	    saveChar;  	    /* Ending delimiter of member-name */
    Boolean 	    subLibName;	    /* TRUE if libName should have/had
				     * variable substitution performed on it */

    libName = *linePtr;

    subLibName = FALSE;

    for (cp = libName; *cp != '(' && *cp != '\0'; cp++) {
	if (*cp == '$') {
	    /*
	     * Variable spec, so call the Var module to parse the puppy
	     * so we can safely advance beyond it...
	     */
	    int 	length;
	    void	*freeIt;
	    char	*result;

	    result = FUNC8(cp, ctxt, VARF_UNDEFERR|VARF_WANTRES,
			       &length, &freeIt);
	    FUNC12(freeIt);

	    if (result == var_Error) {
		return(FAILURE);
	    } else {
		subLibName = TRUE;
	    }

	    cp += length-1;
	}
    }

    *cp++ = '\0';
    if (subLibName) {
	libName = FUNC9(NULL, libName, ctxt, VARF_UNDEFERR|VARF_WANTRES);
    }


    for (;;) {
	/*
	 * First skip to the start of the member's name, mark that
	 * place and skip to the end of it (either white-space or
	 * a close paren).
	 */
	Boolean	doSubst = FALSE; /* TRUE if need to substitute in memName */

	while (*cp != '\0' && *cp != ')' && FUNC13 ((unsigned char)*cp)) {
	    cp++;
	}
	memName = cp;
	while (*cp != '\0' && *cp != ')' && !FUNC13 ((unsigned char)*cp)) {
	    if (*cp == '$') {
		/*
		 * Variable spec, so call the Var module to parse the puppy
		 * so we can safely advance beyond it...
		 */
		int 	length;
		void	*freeIt;
		char	*result;

		result = FUNC8(cp, ctxt, VARF_UNDEFERR|VARF_WANTRES,
				   &length, &freeIt);
		FUNC12(freeIt);

		if (result == var_Error) {
		    return(FAILURE);
		} else {
		    doSubst = TRUE;
		}

		cp += length;
	    } else {
		cp++;
	    }
	}

	/*
	 * If the specification ends without a closing parenthesis,
	 * chances are there's something wrong (like a missing backslash),
	 * so it's better to return failure than allow such things to happen
	 */
	if (*cp == '\0') {
	    FUNC14("No closing parenthesis in archive specification\n");
	    return (FAILURE);
	}

	/*
	 * If we didn't move anywhere, we must be done
	 */
	if (cp == memName) {
	    break;
	}

	saveChar = *cp;
	*cp = '\0';

	/*
	 * XXX: This should be taken care of intelligently by
	 * SuffExpandChildren, both for the archive and the member portions.
	 */
	/*
	 * If member contains variables, try and substitute for them.
	 * This will slow down archive specs with dynamic sources, of course,
	 * since we'll be (non-)substituting them three times, but them's
	 * the breaks -- we need to do this since SuffExpandChildren calls
	 * us, otherwise we could assume the thing would be taken care of
	 * later.
	 */
	if (doSubst) {
	    char    *buf;
	    char    *sacrifice;
	    char    *oldMemName = memName;
	    size_t   sz;

	    memName = FUNC9(NULL, memName, ctxt,
				VARF_UNDEFERR|VARF_WANTRES);

	    /*
	     * Now form an archive spec and recurse to deal with nested
	     * variables and multi-word variable values.... The results
	     * are just placed at the end of the nodeLst we're returning.
	     */
	    sz = FUNC18(memName)+FUNC18(libName)+3;
	    buf = sacrifice = FUNC10(sz);

	    FUNC15(buf, sz, "%s(%s)", libName, memName);

	    if (FUNC16(memName, '$') && FUNC17(memName, oldMemName) == 0) {
		/*
		 * Must contain dynamic sources, so we can't deal with it now.
		 * Just create an ARCHV node for the thing and let
		 * SuffExpandChildren handle it...
		 */
		gn = FUNC7(buf, TARG_CREATE);

		if (gn == NULL) {
		    FUNC12(buf);
		    return(FAILURE);
		} else {
		    gn->type |= OP_ARCHV;
		    (void)FUNC2(nodeLst, gn);
		}
	    } else if (FUNC19(&sacrifice, nodeLst, ctxt)!=SUCCESS) {
		/*
		 * Error in nested call -- free buffer and return FAILURE
		 * ourselves.
		 */
		FUNC12(buf);
		return(FAILURE);
	    }
	    /*
	     * Free buffer and continue with our work.
	     */
	    FUNC12(buf);
	} else if (FUNC1(memName)) {
	    Lst	  members = FUNC5(FALSE);
	    char  *member;
	    size_t sz = MAXPATHLEN, nsz;
	    nameBuf = FUNC10(sz);

	    FUNC0(memName, dirSearchPath, members);
	    while (!FUNC6(members)) {
		member = (char *)FUNC3(members);
		nsz = FUNC18(libName) + FUNC18(member) + 3;
		if (sz > nsz)
		    nameBuf = FUNC11(nameBuf, sz = nsz * 2);

		FUNC15(nameBuf, sz, "%s(%s)", libName, member);
		FUNC12(member);
		gn = FUNC7(nameBuf, TARG_CREATE);
		if (gn == NULL) {
		    FUNC12(nameBuf);
		    return (FAILURE);
		} else {
		    /*
		     * We've found the node, but have to make sure the rest of
		     * the world knows it's an archive member, without having
		     * to constantly check for parentheses, so we type the
		     * thing with the OP_ARCHV bit before we place it on the
		     * end of the provided list.
		     */
		    gn->type |= OP_ARCHV;
		    (void)FUNC2(nodeLst, gn);
		}
	    }
	    FUNC4(members, NULL);
	    FUNC12(nameBuf);
	} else {
	    size_t	sz = FUNC18(libName) + FUNC18(memName) + 3;
	    nameBuf = FUNC10(sz);
	    FUNC15(nameBuf, sz, "%s(%s)", libName, memName);
	    gn = FUNC7(nameBuf, TARG_CREATE);
	    FUNC12(nameBuf);
	    if (gn == NULL) {
		return (FAILURE);
	    } else {
		/*
		 * We've found the node, but have to make sure the rest of the
		 * world knows it's an archive member, without having to
		 * constantly check for parentheses, so we type the thing with
		 * the OP_ARCHV bit before we place it on the end of the
		 * provided list.
		 */
		gn->type |= OP_ARCHV;
		(void)FUNC2(nodeLst, gn);
	    }
	}
	if (doSubst) {
	    FUNC12(memName);
	}

	*cp = saveChar;
    }

    /*
     * If substituted libName, free it now, since we need it no longer.
     */
    if (subLibName) {
	FUNC12(libName);
    }

    /*
     * We promised the pointer would be set up at the next non-space, so
     * we must advance cp there before setting *linePtr... (note that on
     * entrance to the loop, cp is guaranteed to point at a ')')
     */
    do {
	cp++;
    } while (*cp != '\0' && FUNC13 ((unsigned char)*cp));

    *linePtr = cp;
    return (SUCCESS);
}