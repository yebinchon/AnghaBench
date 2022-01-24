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
 int EV_EXIT ; 
 int /*<<< orphan*/  EXEXIT ; 
 union node* NEOF ; 
 scalar_t__ evalskip ; 
 int /*<<< orphan*/  FUNC0 (union node*,int) ; 
 scalar_t__ exitstatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nflag ; 
 union node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct stackmark*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stackmark*) ; 

void
FUNC8(const char *s, int flags)
{
	union node *n;
	struct stackmark smark;
	int flags_exit;
	int any;

	flags_exit = flags & EV_EXIT;
	flags &= ~EV_EXIT;
	any = 0;
	FUNC7(&smark);
	FUNC6(s, 1);
	while ((n = FUNC2(0)) != NEOF) {
		if (n != NULL && !nflag) {
			if (flags_exit && FUNC5())
				FUNC0(n, flags | EV_EXIT);
			else
				FUNC0(n, flags);
			any = 1;
			if (evalskip)
				break;
		}
		FUNC4(&smark);
		FUNC7(&smark);
	}
	FUNC3();
	FUNC4(&smark);
	if (!any)
		exitstatus = 0;
	if (flags_exit)
		FUNC1(EXEXIT);
}