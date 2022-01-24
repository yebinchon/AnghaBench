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
 int SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int child_pid ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int signr ; 

__attribute__((used)) static void FUNC3(void)
{
	if (child_pid != -1)
		FUNC1(child_pid, SIGTERM);

	if (signr == -1)
		return;

	FUNC2(signr, SIG_DFL);
	FUNC1(FUNC0(), signr);
}