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
typedef  int /*<<< orphan*/  Buffer ;
typedef  int Boolean ;

/* Variables and functions */
 char const BRCLOSE ; 
 char const BROPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  PARSE_FATAL ; 
 char const PRCLOSE ; 
 char const PROPEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 void* TRUE ; 
 int VARF_ASSIGN ; 
 int VARF_UNDEFERR ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *,int,int*,void**) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ oldVars ; 
 scalar_t__ save_dollars ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*,int) ; 
 char* varNoError ; 
 char* var_Error ; 

char *
FUNC9(const char *var, const char *str, GNode *ctxt, int flags)
{
    Buffer  	  buf;		    /* Buffer for forming things */
    char    	  *val;		    /* Value to substitute for a variable */
    int		  length;   	    /* Length of the variable invocation */
    Boolean	  trailingBslash;   /* variable ends in \ */
    void 	  *freeIt = NULL;    /* Set if it should be freed */
    static Boolean errorReported;   /* Set true if an error has already
				     * been reported to prevent a plethora
				     * of messages when recursing */

    FUNC3(&buf, 0);
    errorReported = FALSE;
    trailingBslash = FALSE;

    while (*str) {
	if (*str == '\n' && trailingBslash)
	    FUNC0(&buf, ' ');
	if (var == NULL && (*str == '$') && (str[1] == '$')) {
	    /*
	     * A dollar sign may be escaped either with another dollar sign.
	     * In such a case, we skip over the escape character and store the
	     * dollar sign into the buffer directly.
	     */
	    if (save_dollars && (flags & VARF_ASSIGN))
		FUNC0(&buf, *str);
	    str++;
	    FUNC0(&buf, *str);
	    str++;
	} else if (*str != '$') {
	    /*
	     * Skip as many characters as possible -- either to the end of
	     * the string or to the next dollar sign (variable invocation).
	     */
	    const char  *cp;

	    for (cp = str++; *str != '$' && *str != '\0'; str++)
		continue;
	    FUNC1(&buf, str - cp, cp);
	} else {
	    if (var != NULL) {
		int expand;
		for (;;) {
		    if (str[1] == '\0') {
			/* A trailing $ is kind of a special case */
			FUNC0(&buf, str[0]);
			str++;
			expand = FALSE;
		    } else if (str[1] != PROPEN && str[1] != BROPEN) {
			if (str[1] != *var || FUNC7(var) > 1) {
			    FUNC1(&buf, 2, str);
			    str += 2;
			    expand = FALSE;
			}
			else
			    expand = TRUE;
			break;
		    }
		    else {
			const char *p;

			/*
			 * Scan up to the end of the variable name.
			 */
			for (p = &str[2]; *p &&
			     *p != ':' && *p != PRCLOSE && *p != BRCLOSE; p++)
			    if (*p == '$')
				break;
			/*
			 * A variable inside the variable. We cannot expand
			 * the external variable yet, so we try again with
			 * the nested one
			 */
			if (*p == '$') {
			    FUNC1(&buf, p - str, str);
			    str = p;
			    continue;
			}

			if (FUNC8(var, str + 2, p - str - 2) != 0 ||
			    var[p - str - 2] != '\0') {
			    /*
			     * Not the variable we want to expand, scan
			     * until the next variable
			     */
			    for (;*p != '$' && *p != '\0'; p++)
				continue;
			    FUNC1(&buf, p - str, str);
			    str = p;
			    expand = FALSE;
			}
			else
			    expand = TRUE;
			break;
		    }
		}
		if (!expand)
		    continue;
	    }

	    val = FUNC5(str, ctxt, flags, &length, &freeIt);

	    /*
	     * When we come down here, val should either point to the
	     * value of this variable, suitably modified, or be NULL.
	     * Length should be the total length of the potential
	     * variable invocation (from $ to end character...)
	     */
	    if (val == var_Error || val == varNoError) {
		/*
		 * If performing old-time variable substitution, skip over
		 * the variable and continue with the substitution. Otherwise,
		 * store the dollar sign and advance str so we continue with
		 * the string...
		 */
		if (oldVars) {
		    str += length;
		} else if ((flags & VARF_UNDEFERR) || val == var_Error) {
		    /*
		     * If variable is undefined, complain and skip the
		     * variable. The complaint will stop us from doing anything
		     * when the file is parsed.
		     */
		    if (!errorReported) {
			FUNC4(PARSE_FATAL,
				     "Undefined variable \"%.*s\"",length,str);
		    }
		    str += length;
		    errorReported = TRUE;
		} else {
		    FUNC0(&buf, *str);
		    str += 1;
		}
	    } else {
		/*
		 * We've now got a variable structure to store in. But first,
		 * advance the string pointer.
		 */
		str += length;

		/*
		 * Copy all the characters from the variable value straight
		 * into the new string.
		 */
		length = FUNC7(val);
		FUNC1(&buf, length, val);
		trailingBslash = length > 0 && val[length - 1] == '\\';
	    }
	    FUNC6(freeIt);
	    freeIt = NULL;
	}
    }

    return FUNC2(&buf);
}