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
typedef  int u32 ;
struct cx25821_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ * i2c_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNSIGNED_BYTE_MAX ; 
 int /*<<< orphan*/  UNSIGNED_BYTE_MIN ; 
 scalar_t__ VDEC_A_USAT_CTRL ; 
 scalar_t__ VDEC_A_VSAT_CTRL ; 
 int VIDEO_PROCAMP_MAX ; 
 int VIDEO_PROCAMP_MIN ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct cx25821_dev *dev, int saturation, int decoder)
{
	int ret_val = 0;
	int value = 0;
	u32 val = 0, tmp = 0;

	FUNC3(&dev->lock);

	if ((saturation > VIDEO_PROCAMP_MAX)
	    || (saturation < VIDEO_PROCAMP_MIN)) {
		FUNC4(&dev->lock);
		return -1;
	}

	ret_val =
	    FUNC2(VIDEO_PROCAMP_MIN, VIDEO_PROCAMP_MAX, saturation,
		 UNSIGNED_BYTE_MIN, UNSIGNED_BYTE_MAX, &value);

	val =
	    FUNC0(&dev->i2c_bus[0],
			     VDEC_A_USAT_CTRL + (0x200 * decoder), &tmp);
	val &= 0xFFFFFF00;
	ret_val |=
	    FUNC1(&dev->i2c_bus[0],
			      VDEC_A_USAT_CTRL + (0x200 * decoder),
			      val | value);

	val =
	    FUNC0(&dev->i2c_bus[0],
			     VDEC_A_VSAT_CTRL + (0x200 * decoder), &tmp);
	val &= 0xFFFFFF00;
	ret_val |=
	    FUNC1(&dev->i2c_bus[0],
			      VDEC_A_VSAT_CTRL + (0x200 * decoder),
			      val | value);

	FUNC4(&dev->lock);
	return ret_val;
}