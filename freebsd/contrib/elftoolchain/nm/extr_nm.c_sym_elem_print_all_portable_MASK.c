#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* size_print_fn ) (TYPE_1__ const*) ;int /*<<< orphan*/  (* value_print_fn ) (TYPE_1__ const*) ;} ;
struct TYPE_6__ {scalar_t__ st_size; } ;
typedef  TYPE_1__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 TYPE_5__ nm_opts ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 

__attribute__((used)) static void
FUNC5(char type, const char *sec, const GElf_Sym *sym,
    const char *name)
{

	if (sec == NULL || sym == NULL || name == NULL ||
	    nm_opts.value_print_fn == NULL)
		return;

	FUNC1("%s", name);
	FUNC2(" %c ", type);
	if (!FUNC0(type)) {
		nm_opts.value_print_fn(sym);
		FUNC2(" ");
		if (sym->st_size != 0)
			nm_opts.size_print_fn(sym);
	} else
		FUNC2("        ");
}