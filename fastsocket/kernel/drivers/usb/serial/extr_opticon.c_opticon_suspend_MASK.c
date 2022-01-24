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
struct usb_serial {int dummy; } ;
struct usb_interface {int dummy; } ;
struct opticon_private {int /*<<< orphan*/  bulk_read_urb; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct usb_serial* FUNC0 (struct usb_interface*) ; 
 struct opticon_private* FUNC1 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, pm_message_t message)
{
	struct usb_serial *serial = FUNC0(intf);
	struct opticon_private *priv = FUNC1(serial);

	FUNC2(priv->bulk_read_urb);
	return 0;
}