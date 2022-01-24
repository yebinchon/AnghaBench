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
 int E_AND ; 
 int E_OR ; 
 struct expr* e1 ; 
 struct expr* e2 ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 struct expr* FUNC1 (int,struct expr*,struct expr*) ; 
 scalar_t__ FUNC2 (struct expr*,struct expr*) ; 
 int /*<<< orphan*/  FUNC3 (struct expr*) ; 
 int /*<<< orphan*/  symbol_no ; 
 int /*<<< orphan*/  symbol_yes ; 

void FUNC4(enum expr_type type, struct expr **ep, struct expr **ep1, struct expr **ep2)
{
#define e1 (*ep1)
#define e2 (*ep2)
	if (e1->type == type) {
		FUNC4(type, ep, &e1->left.expr, &e2);
		FUNC4(type, ep, &e1->right.expr, &e2);
		return;
	}
	if (e2->type == type) {
		FUNC4(type, ep, ep1, &e2->left.expr);
		FUNC4(type, ep, ep1, &e2->right.expr);
		return;
	}
	if (FUNC2(e1, e2)) {
		*ep = *ep ? FUNC1(type, *ep, e1) : e1;
		FUNC3(e2);
		if (type == E_AND) {
			e1 = FUNC0(&symbol_yes);
			e2 = FUNC0(&symbol_yes);
		} else if (type == E_OR) {
			e1 = FUNC0(&symbol_no);
			e2 = FUNC0(&symbol_no);
		}
	}
#undef e1
#undef e2
}