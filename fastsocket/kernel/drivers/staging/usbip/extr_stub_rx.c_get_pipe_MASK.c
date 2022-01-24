#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_host_endpoint {struct usb_endpoint_descriptor desc; } ;
struct usb_device {int dummy; } ;
struct stub_device {TYPE_1__* interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int USBIP_DIR_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct usb_host_endpoint* FUNC2 (struct usb_device*,int) ; 
 struct usb_device* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC7 (struct usb_endpoint_descriptor*) ; 
 int FUNC8 (struct usb_device*,int) ; 
 int FUNC9 (struct usb_device*,int) ; 
 int FUNC10 (struct usb_device*,int) ; 
 int FUNC11 (struct usb_device*,int) ; 
 int FUNC12 (struct usb_device*,int) ; 
 int FUNC13 (struct usb_device*,int) ; 
 int FUNC14 (struct usb_device*,int) ; 
 int FUNC15 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC16(struct stub_device *sdev, int epnum, int dir)
{
	struct usb_device *udev = FUNC3(sdev->interface);
	struct usb_host_endpoint *ep;
	struct usb_endpoint_descriptor *epd = NULL;

	ep = FUNC2(udev, epnum);
	if (!ep) {
		FUNC1(&sdev->interface->dev, "no such endpoint?, %d\n",
			epnum);
		FUNC0();
	}

	epd = &ep->desc;


#if 0
	/* epnum 0 is always control */
	if (epnum == 0) {
		if (dir == USBIP_DIR_OUT)
			return usb_sndctrlpipe(udev, 0);
		else
			return usb_rcvctrlpipe(udev, 0);
	}
#endif

	if (FUNC5(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC13(udev, epnum);
		else
			return FUNC9(udev, epnum);
	}

	if (FUNC4(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC12(udev, epnum);
		else
			return FUNC8(udev, epnum);
	}

	if (FUNC6(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC14(udev, epnum);
		else
			return FUNC10(udev, epnum);
	}

	if (FUNC7(epd)) {
		if (dir == USBIP_DIR_OUT)
			return FUNC15(udev, epnum);
		else
			return FUNC11(udev, epnum);
	}

	/* NOT REACHED */
	FUNC1(&sdev->interface->dev, "get pipe, epnum %d\n", epnum);
	return 0;
}