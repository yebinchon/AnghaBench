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
struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;
typedef  enum expr_type { ____Placeholder_expr_type } expr_type ;

/* Variables and functions */
#define  E_AND 129 
 int /*<<< orphan*/  E_NOT ; 
#define  E_OR 128 
 struct expr* e1 ; 
 struct expr* e2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct expr*) ; 
 struct expr* FUNC1 (int /*<<< orphan*/ *) ; 
 struct expr* FUNC2 (struct expr*) ; 
 struct expr* FUNC3 (struct expr**,struct expr**) ; 
 struct expr* FUNC4 (struct expr**,struct expr**) ; 
 int /*<<< orphan*/  FUNC5 (struct expr*) ; 
 int /*<<< orphan*/  FUNC6 (struct expr*) ; 
 int /*<<< orphan*/  FUNC7 (struct expr*) ; 
 struct expr* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symbol_no ; 
 int /*<<< orphan*/  symbol_yes ; 
 int /*<<< orphan*/  trans_count ; 

__attribute__((used)) static void FUNC9(enum expr_type type, struct expr **ep1, struct expr **ep2)
{
#define e1 (*ep1)
#define e2 (*ep2)
	struct expr *tmp, *tmp1, *tmp2;

	if (e1->type == type) {
		FUNC9(type, &e1->left.expr, &e2);
		FUNC9(type, &e1->right.expr, &e2);
		return;
	}
	if (e2->type == type) {
		FUNC9(type, &e1, &e2->left.expr);
		FUNC9(type, &e1, &e2->right.expr);
	}
	if (e1 == e2)
		return;

	switch (e1->type) {
	case E_OR:
		FUNC9(e1->type, &e1, &e1);
		// (FOO || BAR) && (!FOO && !BAR) -> n
		tmp1 = FUNC8(FUNC0(E_NOT, FUNC2(e1)));
		tmp2 = FUNC2(e2);
		tmp = FUNC3(&tmp1, &tmp2);
		if (FUNC7(tmp1)) {
			FUNC5(e1);
			e1 = FUNC1(&symbol_no);
			trans_count++;
		}
		FUNC5(tmp2);
		FUNC5(tmp1);
		FUNC5(tmp);
		break;
	case E_AND:
		FUNC9(e1->type, &e1, &e1);
		// (FOO && BAR) || (!FOO || !BAR) -> y
		tmp1 = FUNC8(FUNC0(E_NOT, FUNC2(e1)));
		tmp2 = FUNC2(e2);
		tmp = FUNC4(&tmp1, &tmp2);
		if (FUNC6(tmp1)) {
			FUNC5(e1);
			e1 = FUNC1(&symbol_yes);
			trans_count++;
		}
		FUNC5(tmp2);
		FUNC5(tmp1);
		FUNC5(tmp);
		break;
	default:
		;
	}
#undef e1
#undef e2
}