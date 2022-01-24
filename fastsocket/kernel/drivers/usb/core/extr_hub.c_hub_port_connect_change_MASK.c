#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_hub {int mA_per_port; struct usb_device* hdev; int /*<<< orphan*/  leds; int /*<<< orphan*/ * indicator; scalar_t__ has_indicators; int /*<<< orphan*/  removed_bits; int /*<<< orphan*/  change_bits; TYPE_2__* descriptor; struct device* intfdev; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct TYPE_8__ {scalar_t__ bDeviceClass; int /*<<< orphan*/  bcdUSB; } ;
struct device {int dummy; } ;
struct usb_device {scalar_t__ state; int bus_mA; scalar_t__ speed; scalar_t__ devnum; scalar_t__ parent; struct usb_device** children; TYPE_3__ descriptor; struct device dev; int /*<<< orphan*/  wusb; scalar_t__ level; TYPE_4__* bus; scalar_t__ persist_enabled; } ;
struct TYPE_9__ {scalar_t__ is_b_host; } ;
struct TYPE_7__ {int /*<<< orphan*/  wHubCharacteristics; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* relinquish_port ) (struct usb_hcd*,int) ;int /*<<< orphan*/  (* port_handed_over ) (struct usb_hcd*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 int ENOTSUPP ; 
 unsigned int HUB_CHAR_LPSM ; 
 int /*<<< orphan*/  HUB_LED_AUTO ; 
 int /*<<< orphan*/  INDICATOR_AMBER_BLINK ; 
 int /*<<< orphan*/  INDICATOR_AUTO ; 
 int SET_CONFIG_TRIES ; 
 scalar_t__ USB_CLASS_HUB ; 
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_C_ENABLE ; 
 int USB_PORT_STAT_ENABLE ; 
 int /*<<< orphan*/  USB_RECIP_DEVICE ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_SUPER ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  USB_STATE_POWERED ; 
 scalar_t__ USB_STATE_SUSPENDED ; 
 struct usb_hcd* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*,struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  device_state_lock ; 
 scalar_t__ highspeed_hubs ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 scalar_t__ FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hub*) ; 
 int FUNC9 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hub*,int,int) ; 
 int FUNC11 (struct usb_hub*,struct usb_device*,int,int) ; 
 int FUNC12 (struct usb_hub*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_hub*,int) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*) ; 
 int FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_hub*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_hcd*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_hcd*,int) ; 
 scalar_t__ FUNC27 (int,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC28 (struct usb_device*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct usb_device**) ; 
 int /*<<< orphan*/  FUNC30 (struct usb_device*) ; 
 int FUNC31 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC32 (struct usb_device*) ; 
 int FUNC33 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct usb_device*) ; 

__attribute__((used)) static void FUNC37(struct usb_hub *hub, int port1,
					u16 portstatus, u16 portchange)
{
	struct usb_device *hdev = hub->hdev;
	struct device *hub_dev = hub->intfdev;
	struct usb_hcd *hcd = FUNC0(hdev->bus);
	unsigned wHubCharacteristics =
			FUNC13(hub->descriptor->wHubCharacteristics);
	struct usb_device *udev;
	int status, i;

	FUNC4 (hub_dev,
		"port %d, status %04x, change %04x, %s\n",
		port1, portstatus, portchange, FUNC16(hub, portstatus));

	if (hub->has_indicators) {
		FUNC22(hub, port1, HUB_LED_AUTO);
		hub->indicator[port1-1] = INDICATOR_AUTO;
	}

#ifdef	CONFIG_USB_OTG
	/* during HNP, don't repeat the debounce */
	if (hdev->bus->is_b_host)
		portchange &= ~(USB_PORT_STAT_C_CONNECTION |
				USB_PORT_STAT_C_ENABLE);
#endif

	/* Try to resuscitate an existing device */
	udev = hdev->children[port1-1];
	if ((portstatus & USB_PORT_STAT_CONNECTION) && udev &&
			udev->state != USB_STATE_NOTATTACHED) {
		FUNC32(udev);
		if (portstatus & USB_PORT_STAT_ENABLE) {
			status = 0;		/* Nothing to do */

#ifdef CONFIG_USB_SUSPEND
		} else if (udev->state == USB_STATE_SUSPENDED &&
				udev->persist_enabled) {
			/* For a suspended device, treat this as a
			 * remote wakeup event.
			 */
			status = remote_wakeup(udev);
#endif

		} else {
			status = -ENODEV;	/* Don't resuscitate */
		}
		FUNC36(udev);

		if (status == 0) {
			FUNC3(port1, hub->change_bits);
			return;
		}
	}

	/* Disconnect any existing devices under this port */
	if (udev)
		FUNC29(&hdev->children[port1-1]);
	FUNC3(port1, hub->change_bits);

	/* We can forget about a "removed" device when there's a physical
	 * disconnect or the connect status changes.
	 */
	if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
			(portchange & USB_PORT_STAT_C_CONNECTION))
		FUNC3(port1, hub->removed_bits);

	if (portchange & (USB_PORT_STAT_C_CONNECTION |
				USB_PORT_STAT_C_ENABLE)) {
		status = FUNC9(hub, port1);
		if (status < 0) {
			if (FUNC17())
				FUNC5(hub_dev, "connect-debounce failed, "
						"port %d disabled\n", port1);
			portstatus &= ~USB_PORT_STAT_CONNECTION;
		} else {
			portstatus = status;
		}
	}

	/* Return now if debouncing failed or nothing is connected or
	 * the device was "removed".
	 */
	if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
			FUNC27(port1, hub->removed_bits)) {

		/* maybe switch power back on (e.g. root hub was reset) */
		if ((wHubCharacteristics & HUB_CHAR_LPSM) < 2
				&& !FUNC15(hub, portstatus))
			FUNC21(hdev, port1, USB_PORT_FEAT_POWER);

		if (portstatus & USB_PORT_STAT_ENABLE)
  			goto done;
		return;
	}

	for (i = 0; i < SET_CONFIG_TRIES; i++) {

		/* reallocate for each attempt, since references
		 * to the previous one can escape in various ways
		 */
		udev = FUNC28(hdev, hdev->bus, port1);
		if (!udev) {
			FUNC5 (hub_dev,
				"couldn't allocate port %d usb_device\n",
				port1);
			goto done;
		}

		FUNC35(udev, USB_STATE_POWERED);
 		udev->bus_mA = hub->mA_per_port;
		udev->level = hdev->level + 1;
		udev->wusb = FUNC8(hub);

		/* Only USB 3.0 devices are connected to SuperSpeed hubs. */
		if (FUNC7(hub->hdev))
			udev->speed = USB_SPEED_SUPER;
		else
			udev->speed = USB_SPEED_UNKNOWN;

		FUNC2(udev);
		if (udev->devnum <= 0) {
			status = -ENOTCONN;	/* Don't retry */
			goto loop;
		}

		/* reset (non-USB 3.0 devices) and get descriptor */
		status = FUNC11(hub, udev, port1, i);
		if (status < 0)
			goto loop;

		/* consecutive bus-powered hubs aren't reliable; they can
		 * violate the voltage drop budget.  if the new child has
		 * a "powered" LED, users should notice we didn't enable it
		 * (without reading syslog), even without per-port LEDs
		 * on the parent.
		 */
		if (udev->descriptor.bDeviceClass == USB_CLASS_HUB
				&& udev->bus_mA <= 100) {
			u16	devstat;

			status = FUNC31(udev, USB_RECIP_DEVICE, 0,
					&devstat);
			if (status < 2) {
				FUNC4(&udev->dev, "get status %d ?\n", status);
				goto loop_disable;
			}
			FUNC14(&devstat);
			if ((devstat & (1 << USB_DEVICE_SELF_POWERED)) == 0) {
				FUNC5(&udev->dev,
					"can't connect bus-powered hub "
					"to this port\n");
				if (hub->has_indicators) {
					hub->indicator[port1-1] =
						INDICATOR_AMBER_BLINK;
					FUNC20 (&hub->leds, 0);
				}
				status = -ENOTCONN;	/* Don't retry */
				goto loop_disable;
			}
		}
 
		/* check for devices running slower than they could */
		if (FUNC13(udev->descriptor.bcdUSB) >= 0x0200
				&& udev->speed == USB_SPEED_FULL
				&& highspeed_hubs != 0)
			FUNC1 (hub, udev, port1);

		/* Store the parent's children[] pointer.  At this point
		 * udev becomes globally accessible, although presumably
		 * no one will look at it until hdev is unlocked.
		 */
		status = 0;

		/* We mustn't add new devices if the parent hub has
		 * been disconnected; we would race with the
		 * recursively_mark_NOTATTACHED() routine.
		 */
		FUNC23(&device_state_lock);
		if (hdev->state == USB_STATE_NOTATTACHED)
			status = -ENOTCONN;
		else
			hdev->children[port1-1] = udev;
		FUNC24(&device_state_lock);

		/* Run it through the hoops (find a driver, etc) */
		if (!status) {
			status = FUNC33(udev);
			if (status) {
				FUNC23(&device_state_lock);
				hdev->children[port1-1] = NULL;
				FUNC24(&device_state_lock);
			}
		}

		if (status)
			goto loop_disable;

		status = FUNC12(hub);
		if (status)
			FUNC4(hub_dev, "%dmA power budget left\n", status);

		return;

loop_disable:
		FUNC10(hub, port1, 1);
loop:
		FUNC30(udev);
		FUNC18(udev);
		FUNC6(udev);
		FUNC34(udev);
		if ((status == -ENOTCONN) || (status == -ENOTSUPP))
			break;
	}
	if (hub->hdev->parent ||
			!hcd->driver->port_handed_over ||
			!(hcd->driver->port_handed_over)(hcd, port1))
		FUNC5(hub_dev, "unable to enumerate USB device on port %d\n",
				port1);
 
done:
	FUNC10(hub, port1, 1);
	if (hcd->driver->relinquish_port && !hub->hdev->parent)
		hcd->driver->relinquish_port(hcd, port1);
}