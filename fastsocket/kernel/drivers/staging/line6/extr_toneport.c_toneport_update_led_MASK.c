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
struct usb_line6 {int /*<<< orphan*/  usbdev; } ;
struct usb_line6_toneport {struct usb_line6 line6; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  led_green ; 
 int led_red ; 
 struct usb_interface* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct usb_line6_toneport* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct usb_interface *interface = FUNC0(dev);
	struct usb_line6_toneport *tp = FUNC2(interface);
	struct usb_line6 *line6;

	if (!tp)
		return;

	line6 = &tp->line6;
	if (line6)
		FUNC1(line6->usbdev, (led_red << 8) | 0x0002,
				  led_green);
}