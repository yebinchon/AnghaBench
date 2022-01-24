#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  n; int /*<<< orphan*/  redirect; } ;
union node {scalar_t__ type; TYPE_1__ nredir; } ;
struct job {int dummy; } ;

/* Variables and functions */
 int EV_EXIT ; 
 int EV_TESTED ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ NBACKGND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ exitstatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct job*,union node*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct job* FUNC4 (union node*,int) ; 
 scalar_t__ oexitstatus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct job*,int*) ; 

__attribute__((used)) static void
FUNC7(union node *n, int flags)
{
	struct job *jp;
	int backgnd = (n->type == NBACKGND);

	oexitstatus = exitstatus;
	FUNC1(n->nredir.redirect);
	if ((!backgnd && flags & EV_EXIT && !FUNC3()) ||
			FUNC2(jp = FUNC4(n, 1), n, backgnd) == 0) {
		if (backgnd)
			flags &=~ EV_TESTED;
		FUNC5(n->nredir.redirect, 0);
		FUNC0(n->nredir.n, flags | EV_EXIT);	/* never returns */
	} else if (! backgnd) {
		INTOFF;
		exitstatus = FUNC6(jp, (int *)NULL);
		INTON;
	} else
		exitstatus = 0;
}