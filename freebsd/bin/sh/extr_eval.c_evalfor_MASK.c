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
struct TYPE_4__ {int /*<<< orphan*/  body; int /*<<< orphan*/  var; union node* args; } ;
struct TYPE_3__ {union node* next; } ;
union node {TYPE_2__ nfor; TYPE_1__ narg; } ;
struct arglist {int count; int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int EXP_FULL ; 
 int EXP_TILDE ; 
 scalar_t__ SKIPBREAK ; 
 scalar_t__ SKIPCONT ; 
 int /*<<< orphan*/  FUNC0 (struct arglist*) ; 
 scalar_t__ evalskip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC2 (union node*,struct arglist*,int) ; 
 int /*<<< orphan*/  loopnest ; 
 int oexitstatus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ skipcount ; 

__attribute__((used)) static void
FUNC4(union node *n, int flags)
{
	struct arglist arglist;
	union node *argp;
	int i;
	int status;

	FUNC0(&arglist);
	for (argp = n->nfor.args ; argp ; argp = argp->narg.next) {
		oexitstatus = exitstatus;
		FUNC2(argp, &arglist, EXP_FULL | EXP_TILDE);
	}

	loopnest++;
	status = 0;
	for (i = 0; i < arglist.count; i++) {
		FUNC3(n->nfor.var, arglist.args[i], 0);
		FUNC1(n->nfor.body, flags);
		status = exitstatus;
		if (evalskip) {
			if (evalskip == SKIPCONT && --skipcount <= 0) {
				evalskip = 0;
				continue;
			}
			if (evalskip == SKIPBREAK && --skipcount <= 0)
				evalskip = 0;
			break;
		}
	}
	loopnest--;
	exitstatus = status;
}