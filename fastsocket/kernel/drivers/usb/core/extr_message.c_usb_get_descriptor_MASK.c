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
typedef  unsigned char u8 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct usb_device *dev, unsigned char type,
		       unsigned char index, void *buf, int size)
{
	int i;
	int result;

	FUNC0(buf, 0, size);	/* Make sure we parse really received data */

	for (i = 0; i < 3; ++i) {
		/* retry on length 0 or error; some devices are flakey */
		result = FUNC1(dev, FUNC2(dev, 0),
				USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
				(type << 8) + index, 0, buf, size,
				USB_CTRL_GET_TIMEOUT);
		if (result <= 0 && result != -ETIMEDOUT)
			continue;
		if (result > 1 && ((u8 *)buf)[1] != type) {
			result = -ENODATA;
			continue;
		}
		break;
	}
	return result;
}