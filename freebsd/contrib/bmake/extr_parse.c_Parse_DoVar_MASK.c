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
typedef  void* Boolean ;

/* Variables and functions */
 char* FUNC0 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* MAKEOVERRIDES ; 
 char* MAKE_EXPORTED ; 
 char* MAKE_JOB_PREFIX ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  PARSE_WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*) ; 
 void* TRUE ; 
 int VARF_ASSIGN ; 
 int VARF_UNDEFERR ; 
 int VARF_WANTRES ; 
 int /*<<< orphan*/ * VAR_CMD ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (unsigned char) ; 
 void* oldVars ; 
 int /*<<< orphan*/ * FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 

void
FUNC16(char *line, GNode *ctxt)
{
    char	   *cp;	/* pointer into line */
    enum {
	VAR_SUBST, VAR_APPEND, VAR_SHELL, VAR_NORMAL
    }	    	    type;   	/* Type of assignment */
    char            *opc;	/* ptr to operator character to
				 * null-terminate the variable name */
    Boolean	   freeCp = FALSE; /* TRUE if cp needs to be freed,
				    * i.e. if any variable expansion was
				    * performed */
    int depth;

    /*
     * Skip to variable name
     */
    while ((*line == ' ') || (*line == '\t')) {
	line++;
    }

    /*
     * Skip to operator character, nulling out whitespace as we go
     * XXX Rather than counting () and {} we should look for $ and
     * then expand the variable.
     */
    for (depth = 0, cp = line + 1; depth > 0 || *cp != '='; cp++) {
	if (*cp == '(' || *cp == '{') {
	    depth++;
	    continue;
	}
	if (*cp == ')' || *cp == '}') {
	    depth--;
	    continue;
	}
	if (depth == 0 && FUNC12 ((unsigned char)*cp)) {
	    *cp = '\0';
	}
    }
    opc = cp-1;		/* operator is the previous character */
    *cp++ = '\0';	/* nuke the = */

    /*
     * Check operator type
     */
    switch (*opc) {
	case '+':
	    type = VAR_APPEND;
	    *opc = '\0';
	    break;

	case '?':
	    /*
	     * If the variable already has a value, we don't do anything.
	     */
	    *opc = '\0';
	    if (FUNC7(line, ctxt)) {
		return;
	    } else {
		type = VAR_NORMAL;
	    }
	    break;

	case ':':
	    type = VAR_SUBST;
	    *opc = '\0';
	    break;

	case '!':
	    type = VAR_SHELL;
	    *opc = '\0';
	    break;

	default:
#ifdef SUNSHCMD
	    while (opc > line && *opc != ':')
		opc--;

	    if (strncmp(opc, ":sh", 3) == 0) {
		type = VAR_SHELL;
		*opc = '\0';
		break;
	    }
#endif
	    type = VAR_NORMAL;
	    break;
    }

    while (FUNC12 ((unsigned char)*cp)) {
	cp++;
    }

    if (type == VAR_APPEND) {
	FUNC6(line, cp, ctxt);
    } else if (type == VAR_SUBST) {
	/*
	 * Allow variables in the old value to be undefined, but leave their
	 * invocation alone -- this is done by forcing oldVars to be false.
	 * XXX: This can cause recursive variables, but that's not hard to do,
	 * and this allows someone to do something like
	 *
	 *  CFLAGS = $(.INCLUDES)
	 *  CFLAGS := -I.. $(CFLAGS)
	 *
	 * And not get an error.
	 */
	Boolean	  oldOldVars = oldVars;

	oldVars = FALSE;

	/*
	 * make sure that we set the variable the first time to nothing
	 * so that it gets substituted!
	 */
	if (!FUNC7(line, ctxt))
	    FUNC9(line, "", ctxt, 0);

	cp = FUNC10(NULL, cp, ctxt, VARF_WANTRES|VARF_ASSIGN);
	oldVars = oldOldVars;
	freeCp = TRUE;

	FUNC9(line, cp, ctxt, 0);
    } else if (type == VAR_SHELL) {
	char *res;
	const char *error;

	if (FUNC13(cp, '$') != NULL) {
	    /*
	     * There's a dollar sign in the command, so perform variable
	     * expansion on the whole thing. The resulting string will need
	     * freeing when we're done, so set freeCmd to TRUE.
	     */
	    cp = FUNC10(NULL, cp, VAR_CMD, VARF_UNDEFERR|VARF_WANTRES);
	    freeCp = TRUE;
	}

	res = FUNC0(cp, &error);
	FUNC9(line, res, ctxt, 0);
	FUNC11(res);

	if (error)
	    FUNC5(PARSE_WARNING, error, cp);
    } else {
	/*
	 * Normal assignment -- just do it.
	 */
	FUNC9(line, cp, ctxt, 0);
    }
    if (FUNC14(line, MAKEOVERRIDES) == 0)
	FUNC4(FALSE);	/* re-export MAKEFLAGS */
    else if (FUNC14(line, ".CURDIR") == 0) {
	/*
	 * Somone is being (too?) clever...
	 * Let's pretend they know what they are doing and
	 * re-initialize the 'cur' Path.
	 */
	FUNC1(cp);
	FUNC2();
    } else if (FUNC14(line, MAKE_JOB_PREFIX) == 0) {
	FUNC3();
    } else if (FUNC14(line, MAKE_EXPORTED) == 0) {
	FUNC8(cp, 0);
    }
    if (freeCp)
	FUNC11(cp);
}