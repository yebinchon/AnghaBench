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
struct wahc {int /*<<< orphan*/ * xfer_result; int /*<<< orphan*/  xfer_result_size; TYPE_3__* dti_epd; TYPE_3__* dto_epd; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__* endpoint; } ;
struct TYPE_4__ {TYPE_3__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wahc*,struct usb_interface*) ; 
 int FUNC5 (struct wahc*) ; 
 int /*<<< orphan*/  FUNC6 (struct wahc*) ; 

int FUNC7(struct wahc *wa, struct usb_interface *iface)
{
	int result;
	struct device *dev = &iface->dev;

	result = FUNC5(wa);
	if (result < 0)
		goto error_rpipes_create;
	/* Fill up Data Transfer EP pointers */
	wa->dti_epd = &iface->cur_altsetting->endpoint[1].desc;
	wa->dto_epd = &iface->cur_altsetting->endpoint[2].desc;
	wa->xfer_result_size = FUNC3(wa->dti_epd->wMaxPacketSize);
	wa->xfer_result = FUNC2(wa->xfer_result_size, GFP_KERNEL);
	if (wa->xfer_result == NULL)
		goto error_xfer_result_alloc;
	result = FUNC4(wa, iface);
	if (result < 0) {
		FUNC0(dev, "WA-CDS: can't initialize notif endpoint: %d\n",
			result);
		goto error_nep_create;
	}
	return 0;

error_nep_create:
	FUNC1(wa->xfer_result);
error_xfer_result_alloc:
	FUNC6(wa);
error_rpipes_create:
	return result;
}