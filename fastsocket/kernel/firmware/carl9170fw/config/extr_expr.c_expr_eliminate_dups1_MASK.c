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
#define  E_OR 128 
 struct expr* e1 ; 
 struct expr* e2 ; 
 struct expr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct expr*) ; 
 struct expr* FUNC2 (struct expr*,struct expr*) ; 
 struct expr* FUNC3 (struct expr*,struct expr*) ; 
 int /*<<< orphan*/  symbol_no ; 
 int /*<<< orphan*/  symbol_yes ; 
 int /*<<< orphan*/  trans_count ; 

__attribute__((used)) static void FUNC4(enum expr_type type, struct expr **ep1, struct expr **ep2)
{
#define e1 (*ep1)
#define e2 (*ep2)
	struct expr *tmp;

	if (e1->type == type) {
		FUNC4(type, &e1->left.expr, &e2);
		FUNC4(type, &e1->right.expr, &e2);
		return;
	}
	if (e2->type == type) {
		FUNC4(type, &e1, &e2->left.expr);
		FUNC4(type, &e1, &e2->right.expr);
		return;
	}
	if (e1 == e2)
		return;

	switch (e1->type) {
	case E_OR: case E_AND:
		FUNC4(e1->type, &e1, &e1);
	default:
		;
	}

	switch (type) {
	case E_OR:
		tmp = FUNC3(e1, e2);
		if (tmp) {
			FUNC1(e1); FUNC1(e2);
			e1 = FUNC0(&symbol_no);
			e2 = tmp;
			trans_count++;
		}
		break;
	case E_AND:
		tmp = FUNC2(e1, e2);
		if (tmp) {
			FUNC1(e1); FUNC1(e2);
			e1 = FUNC0(&symbol_yes);
			e2 = tmp;
			trans_count++;
		}
		break;
	default:
		;
	}
#undef e1
#undef e2
}