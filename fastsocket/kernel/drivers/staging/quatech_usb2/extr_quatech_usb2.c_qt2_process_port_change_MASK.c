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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/ * port; } ;
struct quatech2_dev {int /*<<< orphan*/  current_port; } ;

/* Variables and functions */
 struct quatech2_dev* FUNC0 (struct usb_serial*) ; 

__attribute__((used)) static void FUNC1(struct usb_serial_port *port,
	unsigned char New_Current_Port)
{
	/* obtain the parent usb serial device structure */
	struct usb_serial *serial = port->serial;
	/* obtain the private structure for the device */
	struct quatech2_dev *dev_extra = FUNC0(serial);
	dev_extra->current_port = serial->port[New_Current_Port];
	/* what should I do with this? commented out in upstream
	 * driver */
	/*schedule_work(&port->work);*/
}