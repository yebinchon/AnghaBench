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

/* Variables and functions */
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SL_KEY_UNTAB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  newt_suspend ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_tui_eops ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui__signal ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(void)
{
	int err;

	FUNC3();
	err = FUNC1();
	if (err < 0) {
		FUNC6("TUI initialization failed.\n");
		goto out;
	}

	FUNC0((char *)"^(kB)", SL_KEY_UNTAB);

	FUNC4(newt_suspend, NULL);
	FUNC9();
	FUNC8();
	FUNC10();

	FUNC7(SIGSEGV, ui__signal);
	FUNC7(SIGFPE, ui__signal);
	FUNC7(SIGINT, ui__signal);
	FUNC7(SIGQUIT, ui__signal);
	FUNC7(SIGTERM, ui__signal);

	FUNC5(&perf_tui_eops);

	FUNC2();
out:
	return err;
}