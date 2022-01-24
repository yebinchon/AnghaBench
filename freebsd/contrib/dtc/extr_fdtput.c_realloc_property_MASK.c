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
struct fdt_property {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(char *fdt, int nodeoffset,
		const char *name, int newlen)
{
	int delta = 0;
	int oldlen = 0;

	if (!FUNC2(fdt, nodeoffset, name, &oldlen))
		/* strings + property header */
		delta = sizeof(struct fdt_property) + FUNC3(name) + 1;

	if (newlen > oldlen)
		/* actual value in off_struct */
		delta += FUNC0(newlen) - FUNC0(oldlen);

	return FUNC1(fdt, delta);
}