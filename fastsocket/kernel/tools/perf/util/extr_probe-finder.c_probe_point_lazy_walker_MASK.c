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
struct probe_finder {int lno; scalar_t__ addr; int /*<<< orphan*/  fname; int /*<<< orphan*/  lcache; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/ * FUNC1 (struct probe_finder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *fname, int lineno,
				   Dwarf_Addr addr, void *data)
{
	struct probe_finder *pf = data;
	Dwarf_Die *sc_die, die_mem;
	int ret;

	if (!FUNC2(&pf->lcache, lineno) ||
	    FUNC5(fname, pf->fname) != 0)
		return 0;

	FUNC3("Probe line found: line:%d addr:0x%llx\n",
		 lineno, (unsigned long long)addr);
	pf->addr = addr;
	pf->lno = lineno;
	sc_die = FUNC1(pf, &die_mem);
	if (!sc_die) {
		FUNC4("Failed to find scope of probe point.\n");
		return -ENOENT;
	}

	ret = FUNC0(sc_die, pf);

	/*
	 * Continue if no error, because the lazy pattern will match
	 * to other lines
	 */
	return ret < 0 ? ret : 0;
}