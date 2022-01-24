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

/* Variables and functions */
#define  E_AND 133 
#define  E_EQUAL 132 
#define  E_NOT 131 
#define  E_OR 130 
#define  E_SYMBOL 129 
#define  E_UNEQUAL 128 
 int /*<<< orphan*/  FUNC0 (struct expr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(struct expr *e)
{
	if (!e)
		return;

	switch (e->type) {
	case E_SYMBOL:
		break;
	case E_NOT:
		FUNC2(e->left.expr);
		return;
	case E_EQUAL:
	case E_UNEQUAL:
		break;
	case E_OR:
	case E_AND:
		FUNC2(e->left.expr);
		FUNC2(e->right.expr);
		break;
	default:
		FUNC1("how to free type %d?\n", e->type);
		break;
	}
	FUNC0(e);
}