#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCL_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ztest_opts ; 

__attribute__((used)) static void
FUNC6(spa_t *spa)
{
	if (FUNC1(spa) && ztest_opts.zo_verbose >= 6)
		(void) FUNC0("resuming from suspended state\n");
	FUNC2(spa, SCL_NONE);
	FUNC4(spa, NULL);
	(void) FUNC3(spa, NULL, 0);
	(void) FUNC5(spa);
}