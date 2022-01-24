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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXINT ; 
 scalar_t__ SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ iflag ; 
 scalar_t__ intpending ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ rootshell ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC9(void)
{
	sigset_t sigs;

	intpending = 0;
	FUNC4(&sigs);
	FUNC6(SIG_SETMASK, &sigs, NULL);

	/*
	 * This doesn't seem to be needed, since main() emits a newline.
	 */
#if 0
	if (tcgetpgrp(0) == getpid())
		write(STDERR_FILENO, "\n", 1);
#endif
	if (rootshell && iflag)
		FUNC1(EXINT);
	else {
		FUNC5(SIGINT, SIG_DFL);
		FUNC3(FUNC2(), SIGINT);
		FUNC0(128 + SIGINT);
	}
}