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

/* Variables and functions */
 int /*<<< orphan*/  generic_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_serial_generic_device ; 

void FUNC2(void)
{
#ifdef CONFIG_USB_SERIAL_GENERIC
	/* remove our generic driver */
	usb_deregister(&generic_driver);
	usb_serial_deregister(&usb_serial_generic_device);
#endif
}