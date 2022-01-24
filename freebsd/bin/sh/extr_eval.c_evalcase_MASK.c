#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {union node* body; union node* next; union node* pattern; } ;
struct TYPE_5__ {union node* next; } ;
struct TYPE_4__ {union node* cases; int /*<<< orphan*/  expr; } ;
union node {scalar_t__ type; TYPE_3__ nclist; TYPE_2__ narg; TYPE_1__ ncase; } ;
struct arglist {int /*<<< orphan*/ * args; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXP_TILDE ; 
 scalar_t__ NCLISTFALLTHRU ; 
 scalar_t__ FUNC0 (union node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arglist*) ; 
 scalar_t__ exitstatus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct arglist*,int /*<<< orphan*/ ) ; 
 scalar_t__ oexitstatus ; 

__attribute__((used)) static union node *
FUNC3(union node *n)
{
	union node *cp;
	union node *patp;
	struct arglist arglist;

	FUNC1(&arglist);
	oexitstatus = exitstatus;
	FUNC2(n->ncase.expr, &arglist, EXP_TILDE);
	for (cp = n->ncase.cases ; cp ; cp = cp->nclist.next) {
		for (patp = cp->nclist.pattern ; patp ; patp = patp->narg.next) {
			if (FUNC0(patp, arglist.args[0])) {
				while (cp->nclist.next &&
				    cp->type == NCLISTFALLTHRU &&
				    cp->nclist.body == NULL)
					cp = cp->nclist.next;
				if (cp->nclist.next &&
				    cp->type == NCLISTFALLTHRU)
					return (cp);
				if (cp->nclist.body == NULL)
					exitstatus = 0;
				return (cp->nclist.body);
			}
		}
	}
	exitstatus = 0;
	return (NULL);
}