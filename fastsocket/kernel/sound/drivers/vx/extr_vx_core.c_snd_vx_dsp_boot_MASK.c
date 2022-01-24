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
struct vx_core {int chip_status; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int VX_STAT_DEVICE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vx_core*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 

int FUNC4(struct vx_core *chip, const struct firmware *boot)
{
	int err;
	int cold_reset = !(chip->chip_status & VX_STAT_DEVICE_INIT);

	FUNC2(chip, cold_reset);
	FUNC3(chip, 0);

	if ((err = FUNC1(chip, boot)) < 0)
		return err;
	FUNC0(10);

	return 0;
}