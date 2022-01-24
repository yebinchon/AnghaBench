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
struct TYPE_4__ {int /*<<< orphan*/ * sym; struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;

/* Variables and functions */
#define  E_AND 131 
#define  E_NOT 130 
#define  E_OR 129 
#define  E_SYMBOL 128 
 struct expr* FUNC0 (struct expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modules_sym ; 
 int /*<<< orphan*/  symbol_mod ; 

__attribute__((used)) static struct expr *FUNC2(struct expr *e)
{
	if (!e)
		return e;

	switch (e->type) {
	case E_NOT:
		e->left.expr = FUNC2(e->left.expr);
		break;
	case E_OR:
	case E_AND:
		e->left.expr = FUNC2(e->left.expr);
		e->right.expr = FUNC2(e->right.expr);
		break;
	case E_SYMBOL:
		/* change 'm' into 'm' && MODULES */
		if (e->left.sym == &symbol_mod)
			return FUNC0(e, FUNC1(modules_sym));
		break;
	default:
		break;
	}
	return e;
}