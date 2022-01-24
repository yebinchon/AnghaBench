#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  orig_sig; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWSUSP_SIG ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  resume_bdev ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* swsusp_header ; 
 int /*<<< orphan*/  swsusp_resume_block ; 
 int /*<<< orphan*/  swsusp_resume_device ; 

int FUNC11(void)
{
	int error;

	resume_bdev = FUNC8(swsusp_resume_device, FMODE_READ);
	if (!FUNC0(resume_bdev)) {
		FUNC10(resume_bdev, PAGE_SIZE);
		FUNC7(swsusp_header, 0, PAGE_SIZE);
		error = FUNC2(swsusp_resume_block,
					swsusp_header, NULL);
		if (error)
			goto put;

		if (!FUNC5(SWSUSP_SIG, swsusp_header->sig, 10)) {
			FUNC6(swsusp_header->sig, swsusp_header->orig_sig, 10);
			/* Reset swap signature now */
			error = FUNC3(swsusp_resume_block,
						swsusp_header, NULL);
		} else {
			error = -EINVAL;
		}

put:
		if (error)
			FUNC4(resume_bdev, FMODE_READ);
		else
			FUNC9("PM: Signature found, resuming\n");
	} else {
		error = FUNC1(resume_bdev);
	}

	if (error)
		FUNC9("PM: Error %d checking image file\n", error);

	return error;
}