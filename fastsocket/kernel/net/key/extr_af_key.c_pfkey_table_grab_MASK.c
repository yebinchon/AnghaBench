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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  pfkey_table_lock ; 
 int /*<<< orphan*/  pfkey_table_users ; 
 int /*<<< orphan*/  pfkey_table_wait ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
	FUNC7(&pfkey_table_lock);

	if (FUNC3(&pfkey_table_users)) {
		FUNC0(wait, current);

		FUNC2(&pfkey_table_wait, &wait);
		for(;;) {
			FUNC6(TASK_UNINTERRUPTIBLE);
			if (FUNC3(&pfkey_table_users) == 0)
				break;
			FUNC8(&pfkey_table_lock);
			FUNC5();
			FUNC7(&pfkey_table_lock);
		}

		FUNC1(TASK_RUNNING);
		FUNC4(&pfkey_table_wait, &wait);
	}
}