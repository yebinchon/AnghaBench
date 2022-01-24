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
union node {TYPE_1__ nredir; } ;
struct jmploc {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 int EXERROR ; 
 int /*<<< orphan*/  FORCEINTON ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  REDIR_PUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int exception ; 
 int /*<<< orphan*/  exitstatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct jmploc* handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oexitstatus ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(union node *n, int flags)
{
	struct jmploc jmploc;
	struct jmploc *savehandler;
	volatile int in_redirect = 1;

	oexitstatus = exitstatus;
	FUNC1(n->nredir.redirect);
	savehandler = handler;
	if (FUNC5(jmploc.loc)) {
		int e;

		handler = savehandler;
		e = exception;
		FUNC3();
		if (e == EXERROR && in_redirect) {
			FORCEINTON;
			return;
		}
		FUNC2(handler->loc, 1);
	} else {
		INTOFF;
		handler = &jmploc;
		FUNC4(n->nredir.redirect, REDIR_PUSH);
		in_redirect = 0;
		INTON;
		FUNC0(n->nredir.n, flags);
	}
	INTOFF;
	handler = savehandler;
	FUNC3();
	INTON;
}