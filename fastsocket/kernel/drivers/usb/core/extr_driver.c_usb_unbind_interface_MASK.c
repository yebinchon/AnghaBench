#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ status; } ;
struct TYPE_10__ {TYPE_3__ power; } ;
struct usb_interface {int needs_altsetting0; scalar_t__ needs_remote_wakeup; int /*<<< orphan*/  condition; TYPE_6__* altsetting; TYPE_4__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_driver {int /*<<< orphan*/  (* disconnect ) (struct usb_interface*) ;int /*<<< orphan*/  soft_unbind; } ;
struct usb_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_11__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_5__ desc; } ;
struct TYPE_7__ {scalar_t__ bAlternateSetting; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ DPM_ON ; 
 int /*<<< orphan*/  USB_INTERFACE_UNBINDING ; 
 int /*<<< orphan*/  USB_INTERFACE_UNBOUND ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 struct usb_driver* FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC4 (struct device*) ; 
 int FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,struct usb_interface*,int) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct usb_driver *driver = FUNC3(dev->driver);
	struct usb_interface *intf = FUNC4(dev);
	struct usb_device *udev;
	int error, r, lpm_disable_error;

	intf->condition = USB_INTERFACE_UNBINDING;

	/* Autoresume for set_interface call below */
	udev = FUNC0(intf);
	error = FUNC5(udev);

	/* Hub-initiated LPM policy may change, so attempt to disable LPM until
	 * the driver is unbound.  If LPM isn't disabled, that's fine because it
	 * wouldn't be enabled unless all the bound interfaces supported
	 * hub-initiated LPM.
	 */
	lpm_disable_error = FUNC12(udev);

	/* Terminate all URBs for this interface unless the driver
	 * supports "soft" unbinding.
	 */
	if (!driver->soft_unbind)
		FUNC8(udev, intf, false);

	driver->disconnect(intf);
	FUNC7(intf);

	/* Reset other interface state.
	 * We cannot do a Set-Interface if the device is suspended or
	 * if it is prepared for a system sleep (since installing a new
	 * altsetting means creating new endpoint device entries).
	 * When either of these happens, defer the Set-Interface.
	 */
	if (intf->cur_altsetting->desc.bAlternateSetting == 0) {
		/* Already in altsetting 0 so skip Set-Interface.
		 * Just re-enable it without affecting the endpoint toggles.
		 */
		FUNC9(udev, intf, false);
	} else if (!error && intf->dev.power.status == DPM_ON) {
		r = FUNC10(udev, intf->altsetting[0].
				desc.bInterfaceNumber, 0);
		if (r < 0)
			intf->needs_altsetting0 = 1;
	} else {
		intf->needs_altsetting0 = 1;
	}
	FUNC11(intf, NULL);

	intf->condition = USB_INTERFACE_UNBOUND;
	FUNC1(intf);
	intf->needs_remote_wakeup = 0;

	/* Attempt to re-enable USB3 LPM, if the disable succeeded. */
	if (!lpm_disable_error)
		FUNC13(udev);

	if (!error)
		FUNC6(udev);

	return 0;
}