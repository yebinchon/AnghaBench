#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct probe_finder {int /*<<< orphan*/  addr; int /*<<< orphan*/  lno; int /*<<< orphan*/  fname; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; scalar_t__ lazy_line; scalar_t__ line; scalar_t__ file; int /*<<< orphan*/  function; } ;
struct dwarf_callback_param {int /*<<< orphan*/  retval; struct probe_finder* data; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 int /*<<< orphan*/  DW_AT_declaration ; 
 scalar_t__ DW_TAG_subprogram ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe_point_inline_cb ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(Dwarf_Die *sp_die, void *data)
{
	struct dwarf_callback_param *param = data;
	struct probe_finder *pf = param->data;
	struct perf_probe_point *pp = &pf->pev->point;
	Dwarf_Attribute attr;

	/* Check tag and diename */
	if (FUNC9(sp_die) != DW_TAG_subprogram ||
	    !FUNC1(sp_die, pp->function) ||
	    FUNC3(sp_die, DW_AT_declaration, &attr))
		return DWARF_CB_OK;

	/* Check declared file */
	if (pp->file && FUNC13(pp->file, FUNC4(sp_die)))
		return DWARF_CB_OK;

	pf->fname = FUNC4(sp_die);
	if (pp->line) { /* Function relative line */
		FUNC5(sp_die, &pf->lno);
		pf->lno += pp->line;
		param->retval = FUNC10(pf);
	} else if (!FUNC8(sp_die)) {
		/* Real function */
		if (pp->lazy_line)
			param->retval = FUNC11(sp_die, pf);
		else {
			if (FUNC7(sp_die, &pf->addr) != 0) {
				FUNC12("Failed to get entry address of "
					   "%s.\n", FUNC6(sp_die));
				param->retval = -ENOENT;
				return DWARF_CB_ABORT;
			}
			pf->addr += pp->offset;
			/* TODO: Check the address in this function */
			param->retval = FUNC0(sp_die, pf);
		}
	} else
		/* Inlined function: search instances */
		param->retval = FUNC2(sp_die,
					probe_point_inline_cb, (void *)pf);

	return DWARF_CB_ABORT; /* Exit; no same symbol in this CU. */
}