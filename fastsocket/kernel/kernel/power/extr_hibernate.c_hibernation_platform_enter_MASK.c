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
struct TYPE_2__ {int (* begin ) () ;int (* prepare ) () ;int /*<<< orphan*/  (* end ) () ;int /*<<< orphan*/  (* finish ) () ;int /*<<< orphan*/  (* enter ) () ;int /*<<< orphan*/  (* recover ) () ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  PMSG_HIBERNATE ; 
 int /*<<< orphan*/  PMSG_RESTORE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int entering_platform_hibernation ; 
 TYPE_1__* hibernation_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(void)
{
	int error;

	if (!hibernation_ops)
		return -ENOSYS;

	/*
	 * We have cancelled the power transition by running
	 * hibernation_ops->finish() before saving the image, so we should let
	 * the firmware know that we're going to enter the sleep state after all
	 */
	error = hibernation_ops->begin();
	if (error)
		goto Close;

	entering_platform_hibernation = true;
	FUNC12();
	error = FUNC3(PMSG_HIBERNATE);
	if (error) {
		if (hibernation_ops->recover)
			hibernation_ops->recover();
		goto Resume_devices;
	}

	error = FUNC2(PMSG_HIBERNATE);
	if (error)
		goto Resume_devices;

	error = hibernation_ops->prepare();
	if (error)
		goto Platform_finish;

	error = FUNC0();
	if (error)
		goto Platform_finish;

	FUNC4();
	FUNC13(PMSG_HIBERNATE);
	hibernation_ops->enter();
	/* We should never get here */
	while (1);

	/*
	 * We don't need to reenable the nonboot CPUs or resume consoles, since
	 * the system is going to be halted anyway.
	 */
 Platform_finish:
	hibernation_ops->finish();

	FUNC2(PMSG_RESTORE);

 Resume_devices:
	entering_platform_hibernation = false;
	FUNC1(PMSG_RESTORE);
	FUNC5();

 Close:
	hibernation_ops->end();

	return error;
}