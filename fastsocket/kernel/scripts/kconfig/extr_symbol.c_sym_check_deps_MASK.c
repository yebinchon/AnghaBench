#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symbol {int flags; char* name; TYPE_2__* prop; } ;
struct property {int dummy; } ;
struct TYPE_4__ {int lineno; TYPE_1__* file; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int SYMBOL_CHECK ; 
 int SYMBOL_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct symbol* FUNC1 (struct property*) ; 
 int /*<<< orphan*/  stderr ; 
 struct symbol* FUNC2 (struct symbol*) ; 
 struct symbol* FUNC3 (struct symbol*) ; 
 struct property* FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 scalar_t__ FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  zconfnerrs ; 

struct symbol *FUNC7(struct symbol *sym)
{
	struct symbol *sym2;
	struct property *prop;

	if (sym->flags & SYMBOL_CHECK) {
		FUNC0(stderr, "%s:%d:error: found recursive dependency: %s",
		        sym->prop->file->name, sym->prop->lineno,
			sym->name ? sym->name : "<choice>");
		return sym;
	}
	if (sym->flags & SYMBOL_CHECKED)
		return NULL;

	if (FUNC6(sym)) {
		/* for choice groups start the check with main choice symbol */
		prop = FUNC4(sym);
		sym2 = FUNC7(FUNC1(prop));
	} else if (FUNC5(sym)) {
		sym2 = FUNC2(sym);
	} else {
		sym->flags |= (SYMBOL_CHECK | SYMBOL_CHECKED);
		sym2 = FUNC3(sym);
		sym->flags &= ~SYMBOL_CHECK;
	}

	if (sym2) {
		FUNC0(stderr, " -> %s", sym->name ? sym->name : "<choice>");
		if (sym2 == sym) {
			FUNC0(stderr, "\n");
			zconfnerrs++;
			sym2 = NULL;
		}
	}

	return sym2;
}