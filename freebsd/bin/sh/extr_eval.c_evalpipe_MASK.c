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
struct TYPE_2__ {int /*<<< orphan*/  backgnd; struct nodelist* cmdlist; } ;
union node {TYPE_1__ npipe; } ;
struct nodelist {int /*<<< orphan*/  n; struct nodelist* next; } ;
struct job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_EXIT ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ exitstatus ; 
 scalar_t__ FUNC5 (struct job*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct job* FUNC6 (union node*,int) ; 
 scalar_t__ FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct job*,int*) ; 

__attribute__((used)) static void
FUNC11(union node *n)
{
	struct job *jp;
	struct nodelist *lp;
	int pipelen;
	int prevfd;
	int pip[2];

	FUNC0(("evalpipe(%p) called\n", (void *)n));
	pipelen = 0;
	for (lp = n->npipe.cmdlist ; lp ; lp = lp->next)
		pipelen++;
	INTOFF;
	jp = FUNC6(n, pipelen);
	prevfd = -1;
	for (lp = n->npipe.cmdlist ; lp ; lp = lp->next) {
		FUNC8(lp->n);
		pip[1] = -1;
		if (lp->next) {
			if (FUNC7(pip) < 0) {
				if (prevfd >= 0)
					FUNC1(prevfd);
				FUNC3("Pipe call failed: %s", FUNC9(errno));
			}
		}
		if (FUNC5(jp, lp->n, n->npipe.backgnd) == 0) {
			INTON;
			if (prevfd > 0) {
				FUNC2(prevfd, 0);
				FUNC1(prevfd);
			}
			if (pip[1] >= 0) {
				if (!(prevfd >= 0 && pip[0] == 0))
					FUNC1(pip[0]);
				if (pip[1] != 1) {
					FUNC2(pip[1], 1);
					FUNC1(pip[1]);
				}
			}
			FUNC4(lp->n, EV_EXIT);
		}
		if (prevfd >= 0)
			FUNC1(prevfd);
		prevfd = pip[0];
		if (pip[1] != -1)
			FUNC1(pip[1]);
	}
	INTON;
	if (n->npipe.backgnd == 0) {
		INTOFF;
		exitstatus = FUNC10(jp, (int *)NULL);
		FUNC0(("evalpipe:  job done exit status %d\n", exitstatus));
		INTON;
	} else
		exitstatus = 0;
}