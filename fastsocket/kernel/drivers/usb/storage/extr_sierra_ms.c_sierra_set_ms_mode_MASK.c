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
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  SWIMS_USB_REQUEST_SetSwocMode ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_device *udev, __u16 eSWocMode)
{
	int result;
	FUNC0("SWIMS: %s", "DEVICE MODE SWITCH\n");
	result = FUNC1(udev, FUNC2(udev, 0),
			SWIMS_USB_REQUEST_SetSwocMode,	/* __u8 request      */
			USB_TYPE_VENDOR | USB_DIR_OUT,	/* __u8 request type */
			eSWocMode,			/* __u16 value       */
			0x0000,				/* __u16 index       */
			NULL,				/* void *data        */
			0,				/* __u16 size 	     */
			USB_CTRL_SET_TIMEOUT);		/* int timeout       */
	return result;
}