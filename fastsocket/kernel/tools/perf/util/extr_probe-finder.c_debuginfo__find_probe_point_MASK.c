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
struct perf_probe_point {int line; unsigned long offset; int /*<<< orphan*/ * function; int /*<<< orphan*/ * file; } ;
struct debuginfo {unsigned long bias; int /*<<< orphan*/  dbg; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  unsigned long Dwarf_Addr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,char const**,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 
 void* FUNC10 (char const*) ; 

int FUNC11(struct debuginfo *self, unsigned long addr,
				struct perf_probe_point *ppt)
{
	Dwarf_Die cudie, spdie, indie;
	Dwarf_Addr _addr, baseaddr;
	const char *fname = NULL, *func = NULL, *tmp;
	int baseline = 0, lineno = 0, ret = 0;

	/* Adjust address with bias */
	addr += self->bias;

	/* Find cu die */
	if (!FUNC4(self->dbg, (Dwarf_Addr)addr - self->bias, &cudie)) {
		FUNC9("Failed to find debug information for address %lx\n",
			   addr);
		ret = -EINVAL;
		goto end;
	}

	/* Find a corresponding line (filename and lineno) */
	FUNC0(&cudie, addr, &fname, &lineno);
	/* Don't care whether it failed or not */

	/* Find a corresponding function (name, baseline and baseaddr) */
	if (FUNC2(&cudie, (Dwarf_Addr)addr, &spdie)) {
		/* Get function entry information */
		tmp = FUNC6(&spdie);
		if (!tmp ||
		    FUNC7(&spdie, &baseaddr) != 0 ||
		    FUNC5(&spdie, &baseline) != 0)
			goto post;
		func = tmp;

		if (addr == (unsigned long)baseaddr)
			/* Function entry - Relative line number is 0 */
			lineno = baseline;
		else if (FUNC1(&spdie, (Dwarf_Addr)addr,
					     &indie)) {
			if (FUNC7(&indie, &_addr) == 0 &&
			    _addr == addr)
				/*
				 * addr is at an inline function entry.
				 * In this case, lineno should be the call-site
				 * line number.
				 */
				lineno = FUNC3(&indie);
			else {
				/*
				 * addr is in an inline function body.
				 * Since lineno points one of the lines
				 * of the inline function, baseline should
				 * be the entry line of the inline function.
				 */
				tmp = FUNC6(&indie);
				if (tmp &&
				    FUNC5(&spdie, &baseline) == 0)
					func = tmp;
			}
		}
	}

post:
	/* Make a relative line number or an offset */
	if (lineno)
		ppt->line = lineno - baseline;
	else if (func)
		ppt->offset = addr - (unsigned long)baseaddr;

	/* Duplicate strings */
	if (func) {
		ppt->function = FUNC10(func);
		if (ppt->function == NULL) {
			ret = -ENOMEM;
			goto end;
		}
	}
	if (fname) {
		ppt->file = FUNC10(fname);
		if (ppt->file == NULL) {
			if (ppt->function) {
				FUNC8(ppt->function);
				ppt->function = NULL;
			}
			ret = -ENOMEM;
			goto end;
		}
	}
end:
	if (ret == 0 && (fname || func))
		ret = 1;	/* Found a point */
	return ret;
}