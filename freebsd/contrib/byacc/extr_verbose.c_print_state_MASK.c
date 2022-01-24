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
 scalar_t__* RRconflicts ; 
 scalar_t__* SRconflicts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  verbose_file ; 

__attribute__((used)) static void
FUNC5(int state)
{
    if (state)
	FUNC0(verbose_file, "\n\n");
    if (SRconflicts[state] || RRconflicts[state])
	FUNC2(state);
    FUNC0(verbose_file, "state %d\n", state);
    FUNC3(state);
    FUNC4(state);
    FUNC1(state);
}