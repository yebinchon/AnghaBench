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
 int /*<<< orphan*/  PMSG_FREEZE ; 
 int /*<<< orphan*/  PMSG_RECOVER ; 
 int /*<<< orphan*/  PMSG_RESTORE ; 
 int /*<<< orphan*/  PMSG_THAW ; 
 int /*<<< orphan*/  TEST_DEVICES ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ in_suspend ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int platform_mode)
{
	int error;

	error = FUNC5(platform_mode);
	if (error)
		return error;

	/* Preallocate image memory before shutting down devices. */
	error = FUNC3();
	if (error)
		goto Close;

	FUNC11();
	FUNC9();
	error = FUNC2(PMSG_FREEZE);
	if (error)
		goto Recover_platform;

	if (FUNC4(TEST_DEVICES))
		goto Recover_platform;

	error = FUNC0(platform_mode);
	/*
	 * Control returns here (1) after the image has been created or the
	 * image creation has failed and (2) after a successful restore.
	 */

 Resume_devices:
	/* We may need to release the preallocated image pages here. */
	if (error || !in_suspend)
		FUNC12();

	FUNC1(in_suspend ?
		(error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE);

	if (error || !in_suspend)
		FUNC8();

	FUNC10();
 Close:
	FUNC6(platform_mode);
	return error;

 Recover_platform:
	FUNC7(platform_mode);
	goto Resume_devices;
}