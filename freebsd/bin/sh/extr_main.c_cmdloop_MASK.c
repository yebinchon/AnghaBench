#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union node {int dummy; } node ;
struct stackmark {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Iflag ; 
 union node* NEOF ; 
 int /*<<< orphan*/  SHOWJOBS_DEFAULT ; 
 scalar_t__ SKIPRETURN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ evalskip ; 
 int /*<<< orphan*/  FUNC3 (union node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ iflag ; 
 int job_warning ; 
 scalar_t__ nflag ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  output ; 
 union node* FUNC6 (int) ; 
 scalar_t__ pendingsig ; 
 int /*<<< orphan*/  FUNC7 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC8 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(int top)
{
	union node *n;
	struct stackmark smark;
	int inter;
	int numeof = 0;

	FUNC0(("cmdloop(%d) called\n", top));
	FUNC8(&smark);
	for (;;) {
		if (pendingsig)
			FUNC2();
		inter = 0;
		if (iflag && top) {
			inter++;
			FUNC9(1, SHOWJOBS_DEFAULT);
			FUNC1(0);
			FUNC4(&output);
		}
		n = FUNC6(inter);
		/* showtree(n); DEBUG */
		if (n == NEOF) {
			if (!top || numeof >= 50)
				break;
			if (!FUNC10()) {
				if (!Iflag)
					break;
				FUNC5("\nUse \"exit\" to leave shell.\n");
			}
			numeof++;
		} else if (n != NULL && nflag == 0) {
			job_warning = (job_warning == 2) ? 1 : 0;
			numeof = 0;
			FUNC3(n, 0);
		}
		FUNC7(&smark);
		FUNC8(&smark);
		if (evalskip != 0) {
			if (evalskip == SKIPRETURN)
				evalskip = 0;
			break;
		}
	}
	FUNC7(&smark);
}