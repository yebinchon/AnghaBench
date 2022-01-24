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
typedef  int u8 ;
struct usbtmc_device_data {int /*<<< orphan*/  usb_dev; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBTMC_REQUEST_INDICATOR_PULSE ; 
 int USBTMC_STATUS_SUCCESS ; 
 int /*<<< orphan*/  USBTMC_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbtmc_device_data *data)
{
	struct device *dev;
	u8 *buffer;
	int rv;

	dev = &data->intf->dev;

	buffer = FUNC3(2, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	rv = FUNC4(data->usb_dev,
			     FUNC5(data->usb_dev, 0),
			     USBTMC_REQUEST_INDICATOR_PULSE,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			     0, 0, buffer, 0x01, USBTMC_TIMEOUT);

	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}

	FUNC0(dev, "INDICATOR_PULSE returned %x\n", buffer[0]);

	if (buffer[0] != USBTMC_STATUS_SUCCESS) {
		FUNC1(dev, "INDICATOR_PULSE returned %x\n", buffer[0]);
		rv = -EPERM;
		goto exit;
	}
	rv = 0;

exit:
	FUNC2(buffer);
	return rv;
}