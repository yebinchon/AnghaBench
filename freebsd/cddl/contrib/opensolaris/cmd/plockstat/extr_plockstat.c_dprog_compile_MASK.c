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
typedef  int /*<<< orphan*/  dtrace_proginfo_t ;
typedef  int /*<<< orphan*/  dtrace_prog_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_PROBESPEC_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_dtp ; 
 scalar_t__ g_opt_V ; 
 char* g_pname ; 
 int /*<<< orphan*/  g_prog ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(void)
{
	dtrace_prog_t *prog;
	dtrace_proginfo_t info;

	if (g_opt_V) {
		(void) FUNC3(stderr, "%s: vvvv D program vvvv\n", g_pname);
		(void) FUNC4(g_prog, stderr);
		(void) FUNC3(stderr, "%s: ^^^^ D program ^^^^\n", g_pname);
	}

	if ((prog = FUNC2(g_dtp, g_prog,
	    DTRACE_PROBESPEC_NAME, 0, 0, NULL)) == NULL)
		FUNC0("failed to compile program");

	if (FUNC1(g_dtp, prog, &info) == -1)
		FUNC0("failed to enable probes");
}