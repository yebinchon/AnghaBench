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
struct display_device {int /*<<< orphan*/  idx; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_dsp ; 
 int /*<<< orphan*/  allocated_dsp_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct display_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct display_device *ddev)
{
	if (!ddev)
		return;
	// Free device
	FUNC3(&ddev->lock);
	FUNC0(ddev->dev);
	FUNC4(&ddev->lock);
	// Mark device index as avaliable
	FUNC3(&allocated_dsp_lock);
	FUNC1(&allocated_dsp, ddev->idx);
	FUNC4(&allocated_dsp_lock);
	FUNC2(ddev);
}