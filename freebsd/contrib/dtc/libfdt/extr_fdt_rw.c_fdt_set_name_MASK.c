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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

int FUNC6(void *fdt, int nodeoffset, const char *name)
{
	char *namep;
	int oldlen, newlen;
	int err;

	FUNC0(fdt);

	namep = (char *)(uintptr_t)FUNC3(fdt, nodeoffset, &oldlen);
	if (!namep)
		return oldlen;

	newlen = FUNC5(name);

	err = FUNC2(fdt, namep, FUNC1(oldlen+1),
				 FUNC1(newlen+1));
	if (err)
		return err;

	FUNC4(namep, name, newlen+1);
	return 0;
}