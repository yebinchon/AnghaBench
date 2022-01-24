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
struct TYPE_4__ {int /*<<< orphan*/  expr; } ;
struct symbol {struct property* prop; TYPE_2__ rev_dep; } ;
struct TYPE_3__ {int /*<<< orphan*/  expr; } ;
struct property {scalar_t__ type; int /*<<< orphan*/  expr; TYPE_1__ visible; struct property* next; } ;

/* Variables and functions */
 scalar_t__ P_CHOICE ; 
 scalar_t__ P_DEFAULT ; 
 scalar_t__ P_SELECT ; 
 struct symbol* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct symbol*) ; 

__attribute__((used)) static struct symbol *FUNC2(struct symbol *sym)
{
	struct symbol *sym2;
	struct property *prop;

	sym2 = FUNC0(sym->rev_dep.expr);
	if (sym2)
		return sym2;

	for (prop = sym->prop; prop; prop = prop->next) {
		if (prop->type == P_CHOICE || prop->type == P_SELECT)
			continue;
		sym2 = FUNC0(prop->visible.expr);
		if (sym2)
			break;
		if (prop->type != P_DEFAULT || FUNC1(sym))
			continue;
		sym2 = FUNC0(prop->expr);
		if (sym2)
			break;
	}

	return sym2;
}