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
 int KSYM_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char const* FUNC4 (unsigned long,unsigned long*,unsigned long*,char**,char*) ; 

const char *FUNC5(unsigned long addr,
			    unsigned long *symbolsize,
			    unsigned long *offset,
			    char **modname, char *namebuf)
{
	namebuf[KSYM_NAME_LEN - 1] = 0;
	namebuf[0] = 0;

	if (FUNC2(addr)) {
		unsigned long pos;

		pos = FUNC1(addr, symbolsize, offset);
		/* Grab name */
		FUNC3(FUNC0(pos), namebuf);
		if (modname)
			*modname = NULL;
		return namebuf;
	}

	/* See if it's in a module. */
	return FUNC4(addr, symbolsize, offset, modname,
				     namebuf);
}