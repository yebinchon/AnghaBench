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
 int /*<<< orphan*/  FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (size_t) ; 
 size_t FUNC4 (char const*) ; 

char *
FUNC5(const char **path, const char **popt, const char *name)
{
	const char *p, *start;
	char *q;
	size_t len, namelen;

	if (*path == NULL)
		return NULL;
	start = *path;
	if (popt != NULL)
		for (p = start; *p && *p != ':' && *p != '%'; p++)
			; /* nothing */
	else
		for (p = start; *p && *p != ':'; p++)
			; /* nothing */
	namelen = FUNC4(name);
	len = p - start + namelen + 2;	/* "2" is for '/' and '\0' */
	FUNC1(q);
	FUNC0(len, q);
	if (p != start) {
		FUNC2(q, start, p - start);
		q += p - start;
		*q++ = '/';
	}
	FUNC2(q, name, namelen + 1);
	if (popt != NULL) {
		if (*p == '%') {
			*popt = ++p;
			while (*p && *p != ':')  p++;
		} else
			*popt = NULL;
	}
	if (*p == ':')
		*path = p + 1;
	else
		*path = NULL;
	return FUNC3(len);
}