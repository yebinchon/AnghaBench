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
typedef  int /*<<< orphan*/  Dwarf_Line ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(Dwarf_Die *cu_die, unsigned long addr,
		    const char **fname, int *lineno)
{
	Dwarf_Line *line;
	Dwarf_Addr laddr;

	line = FUNC0(cu_die, (Dwarf_Addr)addr);
	if (line && FUNC1(line, &laddr) == 0 &&
	    addr == (unsigned long)laddr && FUNC2(line, lineno) == 0) {
		*fname = FUNC3(line, NULL, NULL);
		if (!*fname)
			/* line number is useless without filename */
			*lineno = 0;
	}

	return *lineno ?: -ENOENT;
}