#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* expr; } ;
struct symbol {scalar_t__ type; int flags; TYPE_3__ rev_dep; struct property* prop; } ;
struct TYPE_8__ {struct expr* expr; } ;
struct property {scalar_t__ type; TYPE_4__ visible; int /*<<< orphan*/  text; struct expr* expr; struct menu* menu; struct property* next; } ;
struct menu {struct property* prompt; struct menu* list; struct menu* next; struct menu* parent; struct symbol* sym; struct expr* dep; } ;
struct TYPE_6__ {struct symbol* sym; } ;
struct TYPE_5__ {struct expr* expr; } ;
struct expr {TYPE_2__ right; TYPE_1__ left; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_EQUAL ; 
 int /*<<< orphan*/  E_LIST ; 
 int /*<<< orphan*/  E_UNEQUAL ; 
 int /*<<< orphan*/  P_CHOICE ; 
 scalar_t__ P_DEFAULT ; 
 scalar_t__ P_PROMPT ; 
 scalar_t__ P_SELECT ; 
 int SYMBOL_CHOICEVAL ; 
 int SYMBOL_WARNED ; 
 scalar_t__ S_TRISTATE ; 
 scalar_t__ S_UNKNOWN ; 
 struct menu* current_entry ; 
 void* FUNC0 (struct expr*,struct expr*) ; 
 struct expr* FUNC1 (int /*<<< orphan*/ ,struct symbol*,int /*<<< orphan*/ *) ; 
 struct expr* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (void*,void*) ; 
 struct expr* FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct expr*,struct symbol*) ; 
 struct expr* FUNC6 (struct expr*) ; 
 scalar_t__ FUNC7 (struct expr*,struct symbol*) ; 
 struct expr* FUNC8 (struct expr*) ; 
 int /*<<< orphan*/  FUNC9 (struct expr**,struct expr**) ; 
 int /*<<< orphan*/  FUNC10 (struct expr*) ; 
 int /*<<< orphan*/  FUNC11 (struct expr*) ; 
 struct expr* FUNC12 (struct expr*) ; 
 struct expr* FUNC13 (struct expr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct expr* FUNC14 (struct expr*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct symbol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct menu*,char*) ; 
 struct symbol* FUNC18 (struct property*) ; 
 int /*<<< orphan*/  FUNC19 (struct property*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct symbol*) ; 
 struct property* FUNC21 (struct symbol*) ; 
 scalar_t__ FUNC22 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC24 (struct symbol*) ; 
 struct symbol symbol_mod ; 
 int /*<<< orphan*/  symbol_no ; 
 int /*<<< orphan*/  symbol_yes ; 

void FUNC25(struct menu *parent)
{
	struct menu *menu, *last_menu;
	struct symbol *sym;
	struct property *prop;
	struct expr *parentdep, *basedep, *dep, *dep2, **ep;

	sym = parent->sym;
	if (parent->list) {
		if (sym && FUNC22(sym)) {
			if (sym->type == S_UNKNOWN) {
				/* find the first choice value to find out choice type */
				current_entry = parent;
				for (menu = parent->list; menu; menu = menu->next) {
					if (menu->sym && menu->sym->type != S_UNKNOWN) {
						FUNC16(menu->sym->type);
						break;
					}
				}
			}
			/* set the type of the remaining choice values */
			for (menu = parent->list; menu; menu = menu->next) {
				current_entry = menu;
				if (menu->sym && menu->sym->type == S_UNKNOWN)
					FUNC16(sym->type);
			}
			parentdep = FUNC4(sym);
		} else if (parent->prompt)
			parentdep = parent->prompt->visible.expr;
		else
			parentdep = parent->dep;

		for (menu = parent->list; menu; menu = menu->next) {
			basedep = FUNC14(menu->dep);
			basedep = FUNC0(FUNC6(parentdep), basedep);
			basedep = FUNC8(basedep);
			menu->dep = basedep;
			if (menu->sym)
				prop = menu->sym->prop;
			else
				prop = menu->prompt;
			for (; prop; prop = prop->next) {
				if (prop->menu != menu)
					continue;
				dep = FUNC14(prop->visible.expr);
				dep = FUNC0(FUNC6(basedep), dep);
				dep = FUNC8(dep);
				if (menu->sym && menu->sym->type != S_TRISTATE)
					dep = FUNC12(dep);
				prop->visible.expr = dep;
				if (prop->type == P_SELECT) {
					struct symbol *es = FUNC18(prop);
					es->rev_dep.expr = FUNC3(es->rev_dep.expr,
							FUNC0(FUNC4(menu->sym), FUNC6(dep)));
				}
			}
		}
		for (menu = parent->list; menu; menu = menu->next)
			FUNC25(menu);
	} else if (sym) {
		basedep = parent->prompt ? parent->prompt->visible.expr : NULL;
		basedep = FUNC13(basedep, E_UNEQUAL, &symbol_no);
		basedep = FUNC8(FUNC14(basedep));
		last_menu = NULL;
		for (menu = parent->next; menu; menu = menu->next) {
			dep = menu->prompt ? menu->prompt->visible.expr : menu->dep;
			if (!FUNC5(dep, sym))
				break;
			if (FUNC7(dep, sym))
				goto next;
			dep = FUNC13(dep, E_UNEQUAL, &symbol_no);
			dep = FUNC8(FUNC14(dep));
			dep2 = FUNC6(basedep);
			FUNC9(&dep, &dep2);
			FUNC10(dep);
			if (!FUNC11(dep2)) {
				FUNC10(dep2);
				break;
			}
			FUNC10(dep2);
		next:
			FUNC25(menu);
			menu->parent = parent;
			last_menu = menu;
		}
		if (last_menu) {
			parent->list = parent->next;
			parent->next = last_menu->next;
			last_menu->next = NULL;
		}
	}
	for (menu = parent->list; menu; menu = menu->next) {
		if (sym && FUNC22(sym) &&
		    menu->sym && !FUNC23(menu->sym)) {
			current_entry = menu;
			menu->sym->flags |= SYMBOL_CHOICEVAL;
			if (!menu->prompt)
				FUNC17(menu, "choice value must have a prompt");
			for (prop = menu->sym->prop; prop; prop = prop->next) {
				if (prop->type == P_DEFAULT)
					FUNC19(prop, "defaults for choice "
						  "values not supported");
				if (prop->menu == menu)
					continue;
				if (prop->type == P_PROMPT &&
				    prop->menu->parent->sym != sym)
					FUNC19(prop, "choice value used outside its choice group");
			}
			/* Non-tristate choice values of tristate choices must
			 * depend on the choice being set to Y. The choice
			 * values' dependencies were propagated to their
			 * properties above, so the change here must be re-
			 * propagated.
			 */
			if (sym->type == S_TRISTATE && menu->sym->type != S_TRISTATE) {
				basedep = FUNC1(E_EQUAL, sym, &symbol_yes);
				menu->dep = FUNC0(basedep, menu->dep);
				for (prop = menu->sym->prop; prop; prop = prop->next) {
					if (prop->menu != menu)
						continue;
					prop->visible.expr = FUNC0(FUNC6(basedep),
									    prop->visible.expr);
				}
			}
			FUNC15(P_CHOICE, sym, NULL);
			prop = FUNC21(sym);
			for (ep = &prop->expr; *ep; ep = &(*ep)->left.expr)
				;
			*ep = FUNC2(E_LIST, NULL);
			(*ep)->right.sym = menu->sym;
		}
		if (menu->list && (!menu->prompt || !menu->prompt->text)) {
			for (last_menu = menu->list; ; last_menu = last_menu->next) {
				last_menu->parent = parent;
				if (!last_menu->next)
					break;
			}
			last_menu->next = menu->next;
			menu->next = menu->list;
			menu->list = NULL;
		}
	}

	if (sym && !(sym->flags & SYMBOL_WARNED)) {
		if (sym->type == S_UNKNOWN)
			FUNC17(parent, "config symbol defined without type");

		if (FUNC22(sym) && !parent->prompt)
			FUNC17(parent, "choice must have a prompt");

		/* Check properties connected to this symbol */
		FUNC20(sym);
		sym->flags |= SYMBOL_WARNED;
	}

	if (sym && !FUNC24(sym) && parent->prompt) {
		sym->rev_dep.expr = FUNC3(sym->rev_dep.expr,
				FUNC0(parent->prompt->visible.expr,
					FUNC4(&symbol_mod)));
	}
}