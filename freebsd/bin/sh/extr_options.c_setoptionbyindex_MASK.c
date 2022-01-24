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
 scalar_t__ Eflag ; 
 scalar_t__ Vflag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* optval ; 
 scalar_t__ privileged ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int idx, int val)
{
	if (&optval[idx] == &privileged && !val && privileged) {
		if (FUNC3(FUNC1()) == -1)
			FUNC0("setgid");
		if (FUNC4(FUNC2()) == -1)
			FUNC0("setuid");
	}
	optval[idx] = val;
	if (val) {
		/* #%$ hack for ksh semantics */
		if (&optval[idx] == &Vflag)
			Eflag = 0;
		else if (&optval[idx] == &Eflag)
			Vflag = 0;
	}
}