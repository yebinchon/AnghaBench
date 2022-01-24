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
typedef  int /*<<< orphan*/  u32 ;
struct cx25821_dev {int tvnorm; int /*<<< orphan*/ * i2c_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  DENC_A_REG_4 ; 
 int /*<<< orphan*/  DENC_B_REG_4 ; 
 int STATUS_SUCCESS ; 
 int V4L2_STD_PAL_BG ; 
 int V4L2_STD_PAL_DK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx25821_dev*) ; 
 int FUNC3 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct cx25821_dev *dev)
{
	int status = STATUS_SUCCESS;
	u32 value = 0, tmp = 0;

	if (dev->tvnorm & V4L2_STD_PAL_BG || dev->tvnorm & V4L2_STD_PAL_DK) {
		status = FUNC3(dev);
	} else {
		status = FUNC2(dev);
	}

	// Enable DENC_A output
	value = FUNC0(&dev->i2c_bus[0], DENC_A_REG_4, &tmp);
	value = FUNC4(value, 4);
	status = FUNC1(&dev->i2c_bus[0], DENC_A_REG_4, value);

	// Enable DENC_B output
	value = FUNC0(&dev->i2c_bus[0], DENC_B_REG_4, &tmp);
	value = FUNC4(value, 4);
	status = FUNC1(&dev->i2c_bus[0], DENC_B_REG_4, value);

	return status;
}