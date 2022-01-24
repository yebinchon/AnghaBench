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
struct pubname_callback_param {scalar_t__ found; int /*<<< orphan*/ * sp_die; int /*<<< orphan*/ * cu_die; int /*<<< orphan*/  file; scalar_t__ function; } ;
struct line_range {int /*<<< orphan*/  path; int /*<<< orphan*/  comp_dir; int /*<<< orphan*/  end; int /*<<< orphan*/  start; scalar_t__ function; int /*<<< orphan*/  file; } ;
struct line_finder {int found; int /*<<< orphan*/  cu_die; int /*<<< orphan*/  lno_e; int /*<<< orphan*/  lno_s; scalar_t__ fname; int /*<<< orphan*/  sp_die; struct line_range* lr; } ;
struct dwarf_callback_param {void* data; int /*<<< orphan*/  retval; } ;
struct debuginfo {int /*<<< orphan*/  dbg; } ;
typedef  scalar_t__ Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pubname_callback_param*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct line_finder*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct line_finder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct dwarf_callback_param*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pubname_search_cb ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

int FUNC10(struct debuginfo *self, struct line_range *lr)
{
	struct line_finder lf = {.lr = lr, .found = 0};
	int ret = 0;
	Dwarf_Off off = 0, noff;
	size_t cuhl;
	Dwarf_Die *diep;
	const char *comp_dir;

	/* Fastpath: lookup by function name from .debug_pubnames section */
	if (lr->function) {
		struct pubname_callback_param pubname_param = {
			.function = lr->function, .file = lr->file,
			.cu_die = &lf.cu_die, .sp_die = &lf.sp_die, .found = 0};
		struct dwarf_callback_param line_range_param = {
			.data = (void *)&lf, .retval = 0};

		FUNC2(self->dbg, pubname_search_cb,
				  &pubname_param, 0);
		if (pubname_param.found) {
			FUNC7(&lf.sp_die, &line_range_param);
			if (lf.found)
				goto found;
		}
	}

	/* Loop on CUs (Compilation Unit) */
	while (!lf.found && ret >= 0) {
		if (FUNC3(self->dbg, off, &noff, &cuhl,
				 NULL, NULL, NULL) != 0)
			break;

		/* Get the DIE(Debugging Information Entry) of this CU */
		diep = FUNC4(self->dbg, off + cuhl, &lf.cu_die);
		if (!diep)
			continue;

		/* Check if target file is included. */
		if (lr->file)
			lf.fname = FUNC0(&lf.cu_die, lr->file);
		else
			lf.fname = 0;

		if (!lr->file || lf.fname) {
			if (lr->function)
				ret = FUNC5(&lf);
			else {
				lf.lno_s = lr->start;
				lf.lno_e = lr->end;
				ret = FUNC6(NULL, &lf);
			}
		}
		off = noff;
	}

found:
	/* Store comp_dir */
	if (lf.found) {
		comp_dir = FUNC1(&lf.cu_die);
		if (comp_dir) {
			lr->comp_dir = FUNC9(comp_dir);
			if (!lr->comp_dir)
				ret = -ENOMEM;
		}
	}

	FUNC8("path: %s\n", lr->path);
	return (ret < 0) ? ret : lf.found;
}