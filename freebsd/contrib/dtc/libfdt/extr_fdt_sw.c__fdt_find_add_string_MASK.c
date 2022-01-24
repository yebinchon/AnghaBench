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
 char* FUNC0 (char*,int,char const*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(void *fdt, const char *s)
{
	char *strtab = (char *)fdt + FUNC5(fdt);
	const char *p;
	int strtabsize = FUNC3(fdt);
	int len = FUNC7(s) + 1;
	int struct_top, offset;

	p = FUNC0(strtab - strtabsize, strtabsize, s);
	if (p)
		return p - strtab;

	/* Add it */
	offset = -strtabsize - len;
	struct_top = FUNC1(fdt) + FUNC4(fdt);
	if (FUNC5(fdt) + offset < struct_top)
		return 0; /* no more room :( */

	FUNC6(strtab + offset, s, len);
	FUNC2(fdt, strtabsize + len);
	return offset;
}