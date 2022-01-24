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
struct TYPE_2__ {int /*<<< orphan*/  enter; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PM_POST_SUSPEND ; 
 int /*<<< orphan*/  PM_SUSPEND_PREPARE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_1__* suspend_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	int error;

	if (!suspend_ops || !suspend_ops->enter)
		return -EPERM;

	FUNC1();

	error = FUNC0(PM_SUSPEND_PREPARE);
	if (error)
		goto Finish;

	error = FUNC5();
	if (error)
		goto Finish;

	error = FUNC3();
	if (!error)
		return 0;

	FUNC4();
	FUNC6();
 Finish:
	FUNC0(PM_POST_SUSPEND);
	FUNC2();
	return error;
}