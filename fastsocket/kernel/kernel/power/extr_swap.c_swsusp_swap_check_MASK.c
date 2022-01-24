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
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resume_bdev ; 
 int root_swap ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swsusp_resume_block ; 
 int /*<<< orphan*/  swsusp_resume_device ; 

__attribute__((used)) static int FUNC4(void) /* This is called before saving image */
{
	int res;

	res = FUNC3(swsusp_resume_device, swsusp_resume_block,
			&resume_bdev);
	if (res < 0)
		return res;

	root_swap = res;
	res = FUNC0(resume_bdev, FMODE_WRITE);
	if (res)
		return res;

	res = FUNC2(resume_bdev, PAGE_SIZE);
	if (res < 0)
		FUNC1(resume_bdev, FMODE_WRITE);

	return res;
}