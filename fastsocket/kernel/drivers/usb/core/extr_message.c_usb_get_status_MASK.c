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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_REQ_GET_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct usb_device *dev, int type, int target, void *data)
{
	int ret;
	u16 *status = FUNC1(sizeof(*status), GFP_KERNEL);

	if (!status)
		return -ENOMEM;

	ret = FUNC2(dev, FUNC3(dev, 0),
		USB_REQ_GET_STATUS, USB_DIR_IN | type, 0, target, status,
		sizeof(*status), USB_CTRL_GET_TIMEOUT);

	*(u16 *)data = *status;
	FUNC0(status);
	return ret;
}