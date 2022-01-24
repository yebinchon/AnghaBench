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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct parport_uss720_private {int /*<<< orphan*/  ref_count; int /*<<< orphan*/ * pp; struct usb_device* usbdev; } ;
struct parport {struct parport_uss720_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  destroy_priv ; 
 int /*<<< orphan*/  FUNC1 (struct parport_uss720_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*) ; 
 struct parport* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct parport *pp = FUNC5(intf);
	struct parport_uss720_private *priv;
	struct usb_device *usbdev;

	FUNC0("disconnect");
	FUNC6(intf, NULL);
	if (pp) {
		priv = pp->private_data;
		usbdev = priv->usbdev;
		priv->usbdev = NULL;
		priv->pp = NULL;
		FUNC0("parport_remove_port");
		FUNC4(pp);
		FUNC3(pp);
		FUNC1(priv);
		FUNC2(&priv->ref_count, destroy_priv);
	}
	FUNC0("disconnect done");
}