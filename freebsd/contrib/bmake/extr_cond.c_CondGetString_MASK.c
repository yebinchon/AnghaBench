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
typedef  int /*<<< orphan*/  Buffer ;
typedef  int Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int VARF_UNDEFERR ; 
 int VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_CMD ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int,int*,void**) ; 
 char* condExpr ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 char* var_Error ; 

__attribute__((used)) static char *
FUNC9(Boolean doEval, Boolean *quoted, void **freeIt, Boolean strictLHS)
{
    Buffer buf;
    char *cp;
    char *str;
    int	len;
    int qt;
    char *start;

    FUNC3(&buf, 0);
    str = NULL;
    *freeIt = NULL;
    *quoted = qt = *condExpr == '"' ? 1 : 0;
    if (qt)
	condExpr++;
    for (start = condExpr; *condExpr && str == NULL; condExpr++) {
	switch (*condExpr) {
	case '\\':
	    if (condExpr[1] != '\0') {
		condExpr++;
		FUNC0(&buf, *condExpr);
	    }
	    break;
	case '"':
	    if (qt) {
		condExpr++;		/* we don't want the quotes */
		goto got_str;
	    } else
		FUNC0(&buf, *condExpr); /* likely? */
	    break;
	case ')':
	case '!':
	case '=':
	case '>':
	case '<':
	case ' ':
	case '\t':
	    if (!qt)
		goto got_str;
	    else
		FUNC0(&buf, *condExpr);
	    break;
	case '$':
	    /* if we are in quotes, then an undefined variable is ok */
	    str = FUNC4(condExpr, VAR_CMD,
			    ((!qt && doEval) ? VARF_UNDEFERR : 0) |
			    VARF_WANTRES, &len, freeIt);
	    if (str == var_Error) {
		if (*freeIt) {
		    FUNC5(*freeIt);
		    *freeIt = NULL;
		}
		/*
		 * Even if !doEval, we still report syntax errors, which
		 * is what getting var_Error back with !doEval means.
		 */
		str = NULL;
		goto cleanup;
	    }
	    condExpr += len;
	    /*
	     * If the '$' was first char (no quotes), and we are
	     * followed by space, the operator or end of expression,
	     * we are done.
	     */
	    if ((condExpr == start + len) &&
		(*condExpr == '\0' ||
		 FUNC7((unsigned char) *condExpr) ||
		 FUNC8("!=><)", *condExpr))) {
		goto cleanup;
	    }
	    /*
	     * Nope, we better copy str to buf
	     */
	    for (cp = str; *cp; cp++) {
		FUNC0(&buf, *cp);
	    }
	    if (*freeIt) {
		FUNC5(*freeIt);
		*freeIt = NULL;
	    }
	    str = NULL;			/* not finished yet */
	    condExpr--;			/* don't skip over next char */
	    break;
	default:
	    if (strictLHS && !qt && *start != '$' &&
		!FUNC6((unsigned char) *start)) {
		/* lhs must be quoted, a variable reference or number */
		if (*freeIt) {
		    FUNC5(*freeIt);
		    *freeIt = NULL;
		}
		str = NULL;
		goto cleanup;
	    }
	    FUNC0(&buf, *condExpr);
	    break;
	}
    }
 got_str:
    str = FUNC2(&buf, NULL);
    *freeIt = str;
 cleanup:
    FUNC1(&buf, FALSE);
    return str;
}