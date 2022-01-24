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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TargPrintOnlySrc ; 
 int /*<<< orphan*/  Targ_PrintNode ; 
 int /*<<< orphan*/  VAR_CMD ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allTargets ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(int pass)
{
    FUNC4(debug_file, "#*** Input graph:\n");
    FUNC1(allTargets, Targ_PrintNode, &pass);
    FUNC4(debug_file, "\n\n");
    FUNC4(debug_file, "#\n#   Files that are only sources:\n");
    FUNC1(allTargets, TargPrintOnlySrc, NULL);
    FUNC4(debug_file, "#*** Global Variables:\n");
    FUNC3(VAR_GLOBAL);
    FUNC4(debug_file, "#*** Command-line Variables:\n");
    FUNC3(VAR_CMD);
    FUNC4(debug_file, "\n");
    FUNC0();
    FUNC4(debug_file, "\n");
    FUNC2();
}