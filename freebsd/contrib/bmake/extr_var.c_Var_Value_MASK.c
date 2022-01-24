#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Var ;
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FIND_CMD ; 
 int FIND_ENV ; 
 int FIND_GLOBAL ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

char *
FUNC3(const char *name, GNode *ctxt, char **frp)
{
    Var            *v;

    v = FUNC1(name, ctxt, FIND_ENV | FIND_GLOBAL | FIND_CMD);
    *frp = NULL;
    if (v != NULL) {
	char *p = (FUNC0(&v->val, NULL));
	if (FUNC2(v, FALSE))
	    *frp = p;
	return p;
    } else {
	return NULL;
    }
}