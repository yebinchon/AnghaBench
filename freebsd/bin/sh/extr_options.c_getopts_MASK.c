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
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  EXERROR ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  VNOFUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 
 int FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(char *optstr, char *optvar, char **optfirst, char ***optnext,
    char **optptr)
{
	char *p, *q;
	char c = '?';
	int done = 0;
	int ind = 0;
	int err = 0;
	char s[10];
	const char *newoptarg = NULL;

	if ((p = *optptr) == NULL || *p == '\0') {
		/* Current word is done, advance */
		if (*optnext == NULL)
			return 1;
		p = **optnext;
		if (p == NULL || *p != '-' || *++p == '\0') {
atend:
			ind = *optnext - optfirst + 1;
			*optnext = NULL;
			p = NULL;
			done = 1;
			goto out;
		}
		(*optnext)++;
		if (p[0] == '-' && p[1] == '\0')	/* check for "--" */
			goto atend;
	}

	c = *p++;
	for (q = optstr; *q != c; ) {
		if (*q == '\0') {
			if (optstr[0] == ':') {
				s[0] = c;
				s[1] = '\0';
				newoptarg = s;
			}
			else
				FUNC3("Illegal option -%c\n", c);
			c = '?';
			goto out;
		}
		if (*++q == ':')
			q++;
	}

	if (*++q == ':') {
		if (*p == '\0' && (p = **optnext) == NULL) {
			if (optstr[0] == ':') {
				s[0] = c;
				s[1] = '\0';
				newoptarg = s;
				c = ':';
			}
			else {
				FUNC3("No arg for -%c option\n", c);
				c = '?';
			}
			goto out;
		}

		if (p == **optnext)
			(*optnext)++;
		newoptarg = p;
		p = NULL;
	}

out:
	if (*optnext != NULL)
		ind = *optnext - optfirst + 1;
	*optptr = p;
	if (newoptarg != NULL)
		err |= FUNC4("OPTARG", newoptarg, 0);
	else {
		INTOFF;
		err |= FUNC5("OPTARG");
		INTON;
	}
	FUNC2(s, sizeof(s), "%d", ind);
	err |= FUNC4("OPTIND", s, VNOFUNC);
	s[0] = c;
	s[1] = '\0';
	err |= FUNC4(optvar, s, 0);
	if (err) {
		*optnext = NULL;
		*optptr = NULL;
		FUNC1();
		FUNC0(EXERROR);
	}
	return done;
}