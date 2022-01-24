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
struct symbol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sym; struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
typedef  enum expr_type { ____Placeholder_expr_type } expr_type ;

/* Variables and functions */
#define  E_AND 136 
#define  E_EQUAL 135 
#define  E_LIST 134 
#define  E_NONE 133 
#define  E_NOT 132 
#define  E_OR 131 
#define  E_RANGE 130 
#define  E_SYMBOL 129 
#define  E_UNEQUAL 128 
 struct expr* FUNC0 (int,int /*<<< orphan*/ ,struct symbol*) ; 
 struct expr* FUNC1 (int const,struct expr*) ; 
 struct expr* FUNC2 (struct symbol*) ; 
 struct expr* FUNC3 (int const,struct expr*,struct expr*) ; 
 struct expr* FUNC4 (struct expr*) ; 
 struct symbol symbol_mod ; 
 struct symbol symbol_no ; 
 struct symbol symbol_yes ; 

struct expr *FUNC5(struct expr *e, enum expr_type type, struct symbol *sym)
{
	struct expr *e1, *e2;

	if (!e) {
		e = FUNC2(sym);
		if (type == E_UNEQUAL)
			e = FUNC1(E_NOT, e);
		return e;
	}
	switch (e->type) {
	case E_AND:
		e1 = FUNC5(e->left.expr, E_EQUAL, sym);
		e2 = FUNC5(e->right.expr, E_EQUAL, sym);
		if (sym == &symbol_yes)
			e = FUNC3(E_AND, e1, e2);
		if (sym == &symbol_no)
			e = FUNC3(E_OR, e1, e2);
		if (type == E_UNEQUAL)
			e = FUNC1(E_NOT, e);
		return e;
	case E_OR:
		e1 = FUNC5(e->left.expr, E_EQUAL, sym);
		e2 = FUNC5(e->right.expr, E_EQUAL, sym);
		if (sym == &symbol_yes)
			e = FUNC3(E_OR, e1, e2);
		if (sym == &symbol_no)
			e = FUNC3(E_AND, e1, e2);
		if (type == E_UNEQUAL)
			e = FUNC1(E_NOT, e);
		return e;
	case E_NOT:
		return FUNC5(e->left.expr, type == E_EQUAL ? E_UNEQUAL : E_EQUAL, sym);
	case E_UNEQUAL:
	case E_EQUAL:
		if (type == E_EQUAL) {
			if (sym == &symbol_yes)
				return FUNC4(e);
			if (sym == &symbol_mod)
				return FUNC2(&symbol_no);
			if (sym == &symbol_no)
				return FUNC1(E_NOT, FUNC4(e));
		} else {
			if (sym == &symbol_yes)
				return FUNC1(E_NOT, FUNC4(e));
			if (sym == &symbol_mod)
				return FUNC2(&symbol_yes);
			if (sym == &symbol_no)
				return FUNC4(e);
		}
		break;
	case E_SYMBOL:
		return FUNC0(type, e->left.sym, sym);
	case E_LIST:
	case E_RANGE:
	case E_NONE:
		/* panic */;
	}
	return NULL;
}