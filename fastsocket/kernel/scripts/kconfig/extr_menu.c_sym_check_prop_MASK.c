#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symbol {int /*<<< orphan*/  type; int /*<<< orphan*/  name; struct property* prop; } ;
struct property {int type; TYPE_3__* expr; struct property* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  sym; } ;
struct TYPE_4__ {int /*<<< orphan*/  sym; } ;
struct TYPE_6__ {TYPE_2__ right; TYPE_1__ left; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_SYMBOL ; 
#define  P_DEFAULT 130 
#define  P_RANGE 129 
#define  P_SELECT 128 
 int /*<<< orphan*/  S_BOOLEAN ; 
 int /*<<< orphan*/  S_HEX ; 
 int /*<<< orphan*/  S_INT ; 
 int /*<<< orphan*/  S_STRING ; 
 int /*<<< orphan*/  S_TRISTATE ; 
 int /*<<< orphan*/  S_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC1 (struct property*) ; 
 int /*<<< orphan*/  FUNC2 (struct property*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct symbol *sym)
{
	struct property *prop;
	struct symbol *sym2;
	for (prop = sym->prop; prop; prop = prop->next) {
		switch (prop->type) {
		case P_DEFAULT:
			if ((sym->type == S_STRING || sym->type == S_INT || sym->type == S_HEX) &&
			    prop->expr->type != E_SYMBOL)
				FUNC2(prop,
				    "default for config symbol '%'"
				    " must be a single symbol", sym->name);
			break;
		case P_SELECT:
			sym2 = FUNC1(prop);
			if (sym->type != S_BOOLEAN && sym->type != S_TRISTATE)
				FUNC2(prop,
				    "config symbol '%s' uses select, but is "
				    "not boolean or tristate", sym->name);
			else if (sym2->type != S_UNKNOWN &&
			         sym2->type != S_BOOLEAN &&
			         sym2->type != S_TRISTATE)
				FUNC2(prop,
				    "'%s' has wrong type. 'select' only "
				    "accept arguments of boolean and "
				    "tristate type", sym2->name);
			break;
		case P_RANGE:
			if (sym->type != S_INT && sym->type != S_HEX)
				FUNC2(prop, "range is only allowed "
				                "for int or hex symbols");
			if (!FUNC0(sym, prop->expr->left.sym) ||
			    !FUNC0(sym, prop->expr->right.sym))
				FUNC2(prop, "range is invalid");
			break;
		default:
			;
		}
	}
}