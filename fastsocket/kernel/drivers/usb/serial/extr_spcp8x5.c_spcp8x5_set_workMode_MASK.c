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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
typedef  enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;

/* Variables and functions */
 int /*<<< orphan*/  SET_WORKING_MODE ; 
 int /*<<< orphan*/  SET_WORKING_MODE_TYPE ; 
 int SPCP825_007_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_device *dev, u16 value,
				 u16 index, enum spcp8x5_type type)
{
	int ret;

	/* I return Permited not support here but seem inval device
	 * is more fix */
	if (type == SPCP825_007_TYPE)
		return;

	ret = FUNC1(dev, FUNC2(dev, 0),
			      SET_WORKING_MODE_TYPE, SET_WORKING_MODE,
			      value, index, NULL, 0, 100);
	FUNC0(&dev->dev, "value = %#x , index = %#x\n", value, index);
	if (ret < 0)
		FUNC0(&dev->dev,
			"RTSCTS usb_control_msg(enable flowctrl) = %d\n", ret);
}