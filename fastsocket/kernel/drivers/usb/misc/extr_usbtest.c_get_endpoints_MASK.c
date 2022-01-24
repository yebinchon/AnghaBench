#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbtest_dev {int /*<<< orphan*/  out_iso_pipe; TYPE_3__* iso_out; int /*<<< orphan*/  in_iso_pipe; TYPE_3__* iso_in; int /*<<< orphan*/  out_pipe; int /*<<< orphan*/  in_pipe; TYPE_1__* info; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; scalar_t__ bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_6__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  iso; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_ENDPOINT_XFER_BULK 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 struct usb_device* FUNC0 (struct usbtest_dev*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int) ; 

__attribute__((used)) static int
FUNC7 (struct usbtest_dev *dev, struct usb_interface *intf)
{
	int				tmp;
	struct usb_host_interface	*alt;
	struct usb_host_endpoint	*in, *out;
	struct usb_host_endpoint	*iso_in, *iso_out;
	struct usb_device		*udev;

	for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
		unsigned	ep;

		in = out = NULL;
		iso_in = iso_out = NULL;
		alt = intf->altsetting + tmp;

		/* take the first altsetting with in-bulk + out-bulk;
		 * ignore other endpoints and altsetttings.
		 */
		for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
			struct usb_host_endpoint	*e;

			e = alt->endpoint + ep;
			switch (e->desc.bmAttributes) {
			case USB_ENDPOINT_XFER_BULK:
				break;
			case USB_ENDPOINT_XFER_ISOC:
				if (dev->info->iso)
					goto try_iso;
				// FALLTHROUGH
			default:
				continue;
			}
			if (FUNC1(&e->desc)) {
				if (!in)
					in = e;
			} else {
				if (!out)
					out = e;
			}
			continue;
try_iso:
			if (FUNC1(&e->desc)) {
				if (!iso_in)
					iso_in = e;
			} else {
				if (!iso_out)
					iso_out = e;
			}
		}
		if ((in && out)  ||  (iso_in && iso_out))
			goto found;
	}
	return -EINVAL;

found:
	udev = FUNC0 (dev);
	if (alt->desc.bAlternateSetting != 0) {
		tmp = FUNC4 (udev,
				alt->desc.bInterfaceNumber,
				alt->desc.bAlternateSetting);
		if (tmp < 0)
			return tmp;
	}

	if (in) {
		dev->in_pipe = FUNC2 (udev,
			in->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
		dev->out_pipe = FUNC5 (udev,
			out->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
	}
	if (iso_in) {
		dev->iso_in = &iso_in->desc;
		dev->in_iso_pipe = FUNC3 (udev,
				iso_in->desc.bEndpointAddress
					& USB_ENDPOINT_NUMBER_MASK);
		dev->iso_out = &iso_out->desc;
		dev->out_iso_pipe = FUNC6 (udev,
				iso_out->desc.bEndpointAddress
					& USB_ENDPOINT_NUMBER_MASK);
	}
	return 0;
}