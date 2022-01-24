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
#define  E_AND 129 
#define  E_OR 128 
 struct expr* FUNC0 (struct expr*,struct expr*) ; 
 struct expr* FUNC1 (struct expr*) ; 
 struct expr* FUNC2 (struct expr*) ; 
 int /*<<< orphan*/  FUNC3 (struct expr*,struct expr*) ; 
 int /*<<< orphan*/  FUNC4 (struct expr*) ; 
 struct expr* FUNC5 (struct expr*) ; 

struct expr *FUNC6(struct expr *e1, struct expr *e2)
{
	struct expr *ret;

	switch (e1->type) {
	case E_OR:
		return FUNC0(
		    FUNC6(e1->left.expr, e2),
		    FUNC6(e1->right.expr, e2));
	case E_AND: {
		struct expr *e;
		e = FUNC0(FUNC1(e1), FUNC1(e2));
		e = FUNC2(e);
		ret = (!FUNC3(e, e1)) ? e1 : NULL;
		FUNC4(e);
		break;
		}
	default:
		ret = e1;
		break;
	}

	return FUNC5(ret);
}