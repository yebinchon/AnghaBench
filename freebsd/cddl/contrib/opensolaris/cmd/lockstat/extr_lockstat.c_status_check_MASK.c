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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_dtp ; 
 int /*<<< orphan*/  g_tracing ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (!g_tracing && FUNC1(g_dtp) != 0)
		FUNC0("failed to snap aggregate");

	if (FUNC2(g_dtp) == -1)
		FUNC0("dtrace_status()");
}