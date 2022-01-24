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
 char** argptr ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 char* nextopt_optptr ; 
 char* shoptarg ; 

int
FUNC1(const char *optstring)
{
	char *p;
	const char *q;
	char c;

	if ((p = nextopt_optptr) == NULL || *p == '\0') {
		p = *argptr;
		if (p == NULL || *p != '-' || *++p == '\0')
			return '\0';
		argptr++;
		if (p[0] == '-' && p[1] == '\0')	/* check for "--" */
			return '\0';
	}
	c = *p++;
	for (q = optstring ; *q != c ; ) {
		if (*q == '\0')
			FUNC0("Illegal option -%c", c);
		if (*++q == ':')
			q++;
	}
	if (*++q == ':') {
		if (*p == '\0' && (p = *argptr++) == NULL)
			FUNC0("No arg for -%c option", c);
		shoptarg = p;
		p = NULL;
	}
	nextopt_optptr = p;
	return c;
}