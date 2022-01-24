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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

__attribute__((used)) static char *
FUNC7(const char *optlist, char *origval, const char *nextarg)
{
	size_t len;
	char *argp, *cp, *newopts, *ns, *optp, *pidp;

	/*
	 * See if the original value includes any option which takes an
	 * argument (and will thus use up the remainder of the string).
	 */
	argp = NULL;
	if (optlist != NULL) {
		for (cp = origval; *cp != '\0'; cp++) {
			optp = FUNC3(optlist, *cp);
			if ((optp != NULL) && *(optp + 1) == ':') {
				argp = cp;
				break;
			}
		}
	}
	if (argp != NULL && *origval == '-')
		return (origval);

	/*
	 * if last letter is a 't' flag with no argument (in the context
	 * of the oldps options -- option string NOT starting with a '-' --
	 * then convert to 'T' (meaning *this* terminal, i.e. ttyname(0)).
	 *
	 * However, if a flag accepting a string argument is found earlier
	 * in the option string (including a possible `t' flag), then the
	 * remainder of the string must be the argument to that flag; so
	 * do not modify that argument.  Note that a trailing `t' would
	 * cause argp to be set, if argp was not already set by some
	 * earlier option.
	 */
	len = FUNC5(origval);
	cp = origval + len - 1;
	pidp = NULL;
	if (*cp == 't' && *origval != '-' && cp == argp) {
		if (nextarg == NULL || *nextarg == '-' || FUNC0(*nextarg))
			*cp = 'T';
	} else if (argp == NULL) {
		/*
		 * The original value did not include any option which takes
		 * an argument (and that would include `p' and `t'), so check
		 * the value for trailing number, or comma-separated list of
		 * numbers, which we will treat as a pid request.
		 */
		if (FUNC0(*cp)) {
			while (cp >= origval && (*cp == ',' || FUNC0(*cp)))
				--cp;
			pidp = cp + 1;
		}
	}

	/*
	 * If nothing needs to be added to the string, then return
	 * the "original" (although possibly modified) value.
	 */
	if (*origval == '-' && pidp == NULL)
		return (origval);

	/*
	 * Create a copy of the string to add '-' and/or 'p' to the
	 * original value.
	 */
	if ((newopts = ns = FUNC1(len + 3)) == NULL)
		FUNC6(1, "malloc failed");

	if (*origval != '-')
		*ns++ = '-';	/* add option flag */

	if (pidp == NULL)
		FUNC4(ns, origval);
	else {
		/*
		 * Copy everything before the pid string, add the `p',
		 * and then copy the pid string.
		 */
		len = pidp - origval;
		FUNC2(ns, origval, len);
		ns += len;
		*ns++ = 'p';
		FUNC4(ns, pidp);
	}

	return (newopts);
}