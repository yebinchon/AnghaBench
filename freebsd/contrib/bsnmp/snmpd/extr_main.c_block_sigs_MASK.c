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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  blocked_sigs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	sigset_t set;

	FUNC1(&set);
	if (FUNC2(SIG_BLOCK, &set, &blocked_sigs) == -1) {
		FUNC3(LOG_ERR, "SIG_BLOCK: %m");
		FUNC0(1);
	}
}