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
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4(const char *word, const char *pattern, int *len)
{
    const char *p = pattern;
    const char *w = word;
    const char *m;

    if (*p == '\0') {
	/* Null pattern is the whole string */
	*len = FUNC3(w);
	return FUNC0(w);
    }

    if ((m = FUNC1(p, '%')) != NULL) {
	/* check that the prefix matches */
	for (; p != m && *w && *w == *p; w++, p++)
	     continue;

	if (p != m)
	    return NULL;	/* No match */

	if (*++p == '\0') {
	    /* No more pattern, return the rest of the string */
	    *len = FUNC3(w);
	    return FUNC0(w);
	}
    }

    m = w;

    /* Find a matching tail */
    do
	if (FUNC2(p, w) == 0) {
	    *len = w - m;
	    return FUNC0(m);
	}
    while (*w++ != '\0');

    return NULL;
}