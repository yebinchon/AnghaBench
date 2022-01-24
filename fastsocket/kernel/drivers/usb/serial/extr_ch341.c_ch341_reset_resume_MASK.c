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
struct usb_serial {int /*<<< orphan*/ * port; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ch341_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*,struct ch341_private*) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 struct usb_serial* FUNC2 (struct usb_interface*) ; 
 struct ch341_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct usb_device *dev = FUNC1(intf);
	struct usb_serial *serial = NULL;
	struct ch341_private *priv;

	serial = FUNC2(intf);
	priv = FUNC3(serial->port[0]);

	/*reconfigure ch341 serial port after bus-reset*/
	FUNC0(dev, priv);

	FUNC4(intf);

	return 0;
}