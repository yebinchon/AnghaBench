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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char **filt, char *what, uintptr_t base, uintptr_t size)
{
	char buf[256], *c = buf, *new;
	int len, newlen;

	if (*filt == NULL) {
		*filt = FUNC2(1);
		*filt[0] = '\0';
	}

#ifdef illumos
	(void) sprintf(c, "%s(%s >= 0x%p && %s < 0x%p)", *filt[0] != '\0' ?
	    " || " : "", what, (void *)base, what, (void *)(base + size));
#else
	(void) FUNC3(c, "%s(%s >= %p && %s < %p)", *filt[0] != '\0' ?
	    " || " : "", what, (void *)base, what, (void *)(base + size));
#endif

	newlen = (len = FUNC5(*filt) + 1) + FUNC5(c);
	new = FUNC2(newlen);
	FUNC0(*filt, new, len);
	(void) FUNC4(new, c);
	FUNC1(*filt);
	*filt = new;
}