#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const** argv; int in; int /*<<< orphan*/  preexec_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 char const** pager_argv ; 
 int /*<<< orphan*/  pager_preexec ; 
 TYPE_1__ pager_process ; 
 char* pager_program ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_default_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int spawned_pager ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  wait_for_pager ; 
 int /*<<< orphan*/  wait_for_pager_signal ; 

void FUNC10(void)
{
	const char *pager = FUNC4("PERF_PAGER");

	if (!FUNC5(1))
		return;
	if (!pager) {
		if (!pager_program)
			FUNC6(perf_default_config, NULL);
		pager = pager_program;
	}
	if (!pager)
		pager = FUNC4("PAGER");
	if (!pager) {
		if (!FUNC0("/usr/bin/pager", X_OK))
			pager = "/usr/bin/pager";
	}
	if (!pager)
		pager = "less";
	else if (!*pager || !FUNC9(pager, "cat"))
		return;

	spawned_pager = 1; /* means we are emitting to terminal */

	/* spawn the pager */
	pager_argv[2] = pager;
	pager_process.argv = pager_argv;
	pager_process.in = -1;
	pager_process.preexec_cb = pager_preexec;

	if (FUNC8(&pager_process))
		return;

	/* original process continues, but writes to the pipe */
	FUNC3(pager_process.in, 1);
	if (FUNC5(2))
		FUNC3(pager_process.in, 2);
	FUNC2(pager_process.in);

	/* this makes sure that the parent terminates after the pager */
	FUNC7(wait_for_pager_signal);
	FUNC1(wait_for_pager);
}