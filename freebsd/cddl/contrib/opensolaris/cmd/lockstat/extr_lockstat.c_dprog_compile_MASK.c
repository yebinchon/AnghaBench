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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ g_Vflag ; 
 int /*<<< orphan*/  g_dtp ; 
 int /*<<< orphan*/  g_prog ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6()
{
	dtrace_prog_t *prog;
	dtrace_proginfo_t info;

	if (g_Vflag) {
		(void) FUNC4(stderr, "lockstat: vvvv D program vvvv\n");
		(void) FUNC5(g_prog, stderr);
		(void) FUNC4(stderr, "lockstat: ^^^^ D program ^^^^\n");
	}

	if ((prog = FUNC3(g_dtp, g_prog,
	    DTRACE_PROBESPEC_NAME, 0, 0, NULL)) == NULL)
		FUNC0("failed to compile program");

	if (FUNC2(g_dtp, prog, &info) == -1)
		FUNC0("failed to enable probes");

	if (FUNC1(g_dtp) != 0)
		FUNC0("couldn't start tracing");
}