#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t_flags; TYPE_2__* t_fndef; int /*<<< orphan*/  t_type; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_5__ {int fn_nargs; int fn_vargs; void** fn_args; void* fn_ret; } ;
typedef  TYPE_2__ fndef_t ;
typedef  int /*<<< orphan*/  dwarf_t ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;
typedef  int /*<<< orphan*/ * Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_type ; 
 scalar_t__ DW_TAG_formal_parameter ; 
 scalar_t__ DW_TAG_unspecified_parameters ; 
 int /*<<< orphan*/  FUNCTION ; 
 int /*<<< orphan*/  TDESC_F_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(dwarf_t *dw, Dwarf_Die die, Dwarf_Off off, tdesc_t *tdp)
{
	Dwarf_Attribute attr;
	Dwarf_Half tag;
	Dwarf_Die arg;
	fndef_t *fn;
	int i;

	FUNC0(3, "die %llu <%llx>: creating function pointer\n", off, off);

	/*
	 * We'll begin by processing any type definition nodes that may be
	 * lurking underneath this one.
	 */
	for (arg = FUNC2(dw, die); arg != NULL;
	    arg = FUNC6(dw, arg)) {
		if ((tag = FUNC7(dw, arg)) != DW_TAG_formal_parameter &&
		    tag != DW_TAG_unspecified_parameters) {
			/* Nested type declaration */
			FUNC3(dw, arg);
		}
	}

	if (FUNC4(dw, die)) {
		/*
		 * This is a prototype.  We don't add prototypes to the
		 * tree, so we're going to drop the tdesc.  Unfortunately,
		 * it has already been added to the tree.  Nobody will reference
		 * it, though, and it will be leaked.
		 */
		return;
	}

	fn = FUNC9(sizeof (fndef_t));

	tdp->t_type = FUNCTION;

	if ((attr = FUNC1(dw, die, DW_AT_type, 0)) != NULL) {
		fn->fn_ret = FUNC5(dw, die, DW_AT_type);
	} else {
		fn->fn_ret = FUNC8(dw);
	}

	/*
	 * Count the arguments to the function, then read them in.
	 */
	for (fn->fn_nargs = 0, arg = FUNC2(dw, die); arg != NULL;
	    arg = FUNC6(dw, arg)) {
		if ((tag = FUNC7(dw, arg)) == DW_TAG_formal_parameter)
			fn->fn_nargs++;
		else if (tag == DW_TAG_unspecified_parameters &&
		    fn->fn_nargs > 0)
			fn->fn_vargs = 1;
	}

	if (fn->fn_nargs != 0) {
		FUNC0(3, "die %llu: adding %d argument%s\n", off, fn->fn_nargs,
		    (fn->fn_nargs > 1 ? "s" : ""));

		fn->fn_args = FUNC9(sizeof (tdesc_t *) * fn->fn_nargs);
		for (i = 0, arg = FUNC2(dw, die);
		    arg != NULL && i < (int) fn->fn_nargs;
		    arg = FUNC6(dw, arg)) {
			if (FUNC7(dw, arg) != DW_TAG_formal_parameter)
				continue;

			fn->fn_args[i++] = FUNC5(dw, arg,
			    DW_AT_type);
		}
	}

	tdp->t_fndef = fn;
	tdp->t_flags |= TDESC_F_RESOLVED;
}