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
struct TYPE_4__ {union node* com; } ;
struct TYPE_3__ {struct nodelist* cmdlist; scalar_t__ backgnd; } ;
union node {TYPE_2__ nnot; int /*<<< orphan*/  type; TYPE_1__ npipe; } ;
struct npipe {int dummy; } ;
struct nodelist {struct nodelist* next; union node* n; } ;
struct nnot {int dummy; } ;

/* Variables and functions */
 int CHKALIAS ; 
 int CHKKWD ; 
 int CHKNL ; 
 int /*<<< orphan*/  NNOT ; 
 int /*<<< orphan*/  NPIPE ; 
 int TNOT ; 
 int TPIPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int checkkwd ; 
 void* FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  tokpushback ; 

__attribute__((used)) static union node *
FUNC4(void)
{
	union node *n1, *n2, *pipenode;
	struct nodelist *lp, *prev;
	int negate, t;

	negate = 0;
	checkkwd = CHKNL | CHKKWD | CHKALIAS;
	FUNC0(("pipeline: entered\n"));
	while (FUNC2() == TNOT)
		negate = !negate;
	tokpushback++;
	n1 = FUNC1();
	if (FUNC2() == TPIPE) {
		pipenode = (union node *)FUNC3(sizeof (struct npipe));
		pipenode->type = NPIPE;
		pipenode->npipe.backgnd = 0;
		lp = (struct nodelist *)FUNC3(sizeof (struct nodelist));
		pipenode->npipe.cmdlist = lp;
		lp->n = n1;
		do {
			prev = lp;
			lp = (struct nodelist *)FUNC3(sizeof (struct nodelist));
			checkkwd = CHKNL | CHKKWD | CHKALIAS;
			t = FUNC2();
			tokpushback++;
			if (t == TNOT)
				lp->n = FUNC4();
			else
				lp->n = FUNC1();
			prev->next = lp;
		} while (FUNC2() == TPIPE);
		lp->next = NULL;
		n1 = pipenode;
	}
	tokpushback++;
	if (negate) {
		n2 = (union node *)FUNC3(sizeof (struct nnot));
		n2->type = NNOT;
		n2->nnot.com = n1;
		return n2;
	} else
		return n1;
}