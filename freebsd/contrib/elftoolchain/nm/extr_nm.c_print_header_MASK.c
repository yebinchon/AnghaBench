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
struct TYPE_2__ {int undef_only; scalar_t__ print_name; int /*<<< orphan*/ * elem_print_fn; } ;

/* Variables and functions */
 scalar_t__ PRINT_NAME_FULL ; 
 scalar_t__ PRINT_NAME_MULTI ; 
 TYPE_1__ nm_opts ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * sym_elem_print_all ; 
 int /*<<< orphan*/ * sym_elem_print_all_portable ; 
 int /*<<< orphan*/  sym_elem_print_all_sysv ; 

__attribute__((used)) static void
FUNC1(const char *file, const char *obj)
{

	if (file == NULL)
		return;

	if (nm_opts.elem_print_fn == &sym_elem_print_all_sysv) {
		FUNC0("\n\n%s from %s",
		    nm_opts.undef_only == false ? "Symbols" :
		    "Undefined symbols", file);
		if (obj != NULL)
			FUNC0("[%s]", obj);
		FUNC0(":\n\n");

		FUNC0("\
Name                  Value           Class        Type         Size             Line  Section\n\n");
	} else {
		/* archive file without -A option and POSIX */
		if (nm_opts.print_name != PRINT_NAME_FULL && obj != NULL) {
			if (nm_opts.elem_print_fn ==
			    sym_elem_print_all_portable)
				FUNC0("%s[%s]:\n", file, obj);
			else if (nm_opts.elem_print_fn == sym_elem_print_all)
				FUNC0("\n%s:\n", obj);
			/* multiple files(not archive) without -A option */
		} else if (nm_opts.print_name == PRINT_NAME_MULTI) {
			if (nm_opts.elem_print_fn == sym_elem_print_all)
				FUNC0("\n");
			FUNC0("%s:\n", file);
		}
	}
}