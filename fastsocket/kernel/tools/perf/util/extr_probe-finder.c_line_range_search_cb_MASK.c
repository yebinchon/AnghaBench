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
struct line_range {scalar_t__ offset; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  function; scalar_t__ file; } ;
struct line_finder {scalar_t__ fname; scalar_t__ lno_s; scalar_t__ lno_e; struct line_range* lr; } ;
struct dwarf_callback_param {int /*<<< orphan*/  retval; struct line_finder* data; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 scalar_t__ DW_TAG_subprogram ; 
 void* INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct line_finder*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct line_finder*) ; 
 int /*<<< orphan*/  line_range_inline_cb ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC9(Dwarf_Die *sp_die, void *data)
{
	struct dwarf_callback_param *param = data;
	struct line_finder *lf = param->data;
	struct line_range *lr = lf->lr;

	/* Check declared file */
	if (lr->file && FUNC8(lr->file, FUNC2(sp_die)))
		return DWARF_CB_OK;

	if (FUNC5(sp_die) == DW_TAG_subprogram &&
	    FUNC0(sp_die, lr->function)) {
		lf->fname = FUNC2(sp_die);
		FUNC3(sp_die, &lr->offset);
		FUNC7("fname: %s, lineno:%d\n", lf->fname, lr->offset);
		lf->lno_s = lr->offset + lr->start;
		if (lf->lno_s < 0)	/* Overflow */
			lf->lno_s = INT_MAX;
		lf->lno_e = lr->offset + lr->end;
		if (lf->lno_e < 0)	/* Overflow */
			lf->lno_e = INT_MAX;
		FUNC7("New line range: %d to %d\n", lf->lno_s, lf->lno_e);
		lr->start = lf->lno_s;
		lr->end = lf->lno_e;
		if (FUNC4(sp_die))
			param->retval = FUNC1(sp_die,
						line_range_inline_cb, lf);
		else
			param->retval = FUNC6(sp_die, lf);
		return DWARF_CB_ABORT;
	}
	return DWARF_CB_OK;
}