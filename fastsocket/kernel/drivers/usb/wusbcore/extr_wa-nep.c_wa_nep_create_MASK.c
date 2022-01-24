#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wahc {int nep_buffer_size; int /*<<< orphan*/ * nep_buffer; int /*<<< orphan*/ * nep_urb; int /*<<< orphan*/  nep_edc; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; struct device dev; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* endpoint; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct wahc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wahc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wa_nep_cb ; 

int FUNC10(struct wahc *wa, struct usb_interface *iface)
{
	int result;
	struct usb_endpoint_descriptor *epd;
	struct usb_device *usb_dev = FUNC2(iface);
	struct device *dev = &iface->dev;

	FUNC1(&wa->nep_edc);
	epd = &iface->cur_altsetting->endpoint[0].desc;
	wa->nep_buffer_size = 1024;
	wa->nep_buffer = FUNC4(wa->nep_buffer_size, GFP_KERNEL);
	if (wa->nep_buffer == NULL) {
		FUNC0(dev, "Unable to allocate notification's read buffer\n");
		goto error_nep_buffer;
	}
	wa->nep_urb = FUNC5(0, GFP_KERNEL);
	if (wa->nep_urb == NULL) {
		FUNC0(dev, "Unable to allocate notification URB\n");
		goto error_urb_alloc;
	}
	FUNC6(wa->nep_urb, usb_dev,
			 FUNC8(usb_dev, epd->bEndpointAddress),
			 wa->nep_buffer, wa->nep_buffer_size,
			 wa_nep_cb, wa, epd->bInterval);
	result = FUNC9(wa, GFP_KERNEL);
	if (result < 0) {
		FUNC0(dev, "Cannot submit notification URB: %d\n", result);
		goto error_nep_arm;
	}
	return 0;

error_nep_arm:
	FUNC7(wa->nep_urb);
error_urb_alloc:
	FUNC3(wa->nep_buffer);
error_nep_buffer:
	return -ENOMEM;
}