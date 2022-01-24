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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(char *m, int slen)
{
	char s[PATH_MAX];
	char *p;

	if (FUNC1(m, slen))
	    return;

	FUNC0(m, slen);

	FUNC2(s, m, slen); s[slen] = 0;

	for (p = s; p < s + slen; p++) {
		if (*p == '_')
			*p = '/';
		else
			*p = FUNC4((int)*p);
	}
	FUNC3("    $(wildcard include/config/%s.h) \\\n", s);
}