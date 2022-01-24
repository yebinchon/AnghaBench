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
 int ERR ; 
 char* ESCAPES ; 
 char* ESCCHARS ; 
 int GLS ; 
 int GNP ; 
 int cols ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  isglobal ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int rows ; 
 int /*<<< orphan*/  scripted ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (char*,char const) ; 

int
FUNC6(const char *s, int l, long n, int gflag)
{
	int col = 0;
	int lc = 0;
	char *cp;

	if (gflag & GNP) {
		FUNC3("%ld\t", n);
		col = 8;
	}
	for (; l--; s++) {
		if ((gflag & GLS) && ++col > cols) {
			FUNC1("\\\n", stdout);
			col = 1;
#ifndef BACKWARDS
			if (!scripted && !isglobal && ++lc > rows) {
				lc = 0;
				FUNC1("Press <RETURN> to continue... ", stdout);
				FUNC0(stdout);
				if (FUNC2() < 0)
					return ERR;
			}
#endif
		}
		if (gflag & GLS) {
			if (31 < *s && *s < 127 && *s != '\\')
				FUNC4(*s);
			else {
				FUNC4('\\');
				col++;
				if (*s && (cp = FUNC5(ESCAPES, *s)) != NULL)
					FUNC4(ESCCHARS[cp - ESCAPES]);
				else {
					FUNC4((((unsigned char) *s & 0300) >> 6) + '0');
					FUNC4((((unsigned char) *s & 070) >> 3) + '0');
					FUNC4(((unsigned char) *s & 07) + '0');
					col += 2;
				}
			}

		} else
			FUNC4(*s);
	}
#ifndef BACKWARDS
	if (gflag & GLS)
		FUNC4('$');
#endif
	FUNC4('\n');
	return 0;
}