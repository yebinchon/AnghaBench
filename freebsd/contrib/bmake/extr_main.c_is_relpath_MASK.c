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
 int FALSE ; 
 int TRUE ; 
 char* FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *path)
{
	const char *cp;

	if (path[0] != '/')
		return TRUE;
	cp = path;
	do {
		cp = FUNC0(cp, "/.");
		if (!cp)
			break;
		cp += 2;
		if (cp[0] == '/' || cp[0] == '\0')
			return TRUE;
		else if (cp[0] == '.') {
			if (cp[1] == '/' || cp[1] == '\0')
				return TRUE;
		}
	} while (cp);
	return FALSE;
}