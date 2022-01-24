#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usbtmc_device_data {TYPE_1__* usb_dev; int /*<<< orphan*/  bulk_out; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBTMC_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int /*<<< orphan*/  USB_ENDPOINT_HALT ; 
 int USB_RECIP_ENDPOINT ; 
 int /*<<< orphan*/  USB_REQ_CLEAR_FEATURE ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbtmc_device_data *data)
{
	u8 *buffer;
	int rv;

	buffer = FUNC2(2, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	rv = FUNC3(data->usb_dev,
			     FUNC4(data->usb_dev, 0),
			     USB_REQ_CLEAR_FEATURE,
			     USB_DIR_OUT | USB_TYPE_STANDARD |
			     USB_RECIP_ENDPOINT,
			     USB_ENDPOINT_HALT, data->bulk_out,
			     buffer, 0, USBTMC_TIMEOUT);

	if (rv < 0) {
		FUNC0(&data->usb_dev->dev, "usb_control_msg returned %d\n",
			rv);
		goto exit;
	}
	rv = 0;

exit:
	FUNC1(buffer);
	return rv;
}