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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TIMEOUT ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOAD_INTERNAL ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_device *usb,
			      u16 addr, u16 size, const u8 *buff)
{
	int ret = -ENOMEM;
	u8 *xfer_buff;

	xfer_buff = FUNC1(buff, size, GFP_KERNEL);
	if (xfer_buff) {
		ret = FUNC2(usb,
				      FUNC3(usb, 0),
				      LOAD_INTERNAL,
				      USB_DIR_OUT | USB_TYPE_VENDOR |
				      USB_RECIP_DEVICE, addr, 0, xfer_buff,
				      size, CTRL_TIMEOUT);
		FUNC0(xfer_buff);
	}

	if (ret < 0)
		return ret;

	return (ret == size) ? 0 : -EIO;
}