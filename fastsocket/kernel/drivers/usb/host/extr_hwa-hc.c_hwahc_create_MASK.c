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
struct wusbhc {int ports_max; int /*<<< orphan*/ * uwb_rc; int /*<<< orphan*/  set_gtk; int /*<<< orphan*/  set_ptk; int /*<<< orphan*/  set_num_dnts; int /*<<< orphan*/  bwa_set; int /*<<< orphan*/  dev_info_set; int /*<<< orphan*/  mmcie_rm; int /*<<< orphan*/  mmcie_add; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  mmcies_max; struct device* dev; } ;
struct wahc {struct wusbhc* wusb; TYPE_1__* wa_descr; int /*<<< orphan*/  usb_iface; int /*<<< orphan*/  usb_dev; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct usb_interface {struct device dev; } ;
struct usb_device {int dummy; } ;
struct hwahc {struct wusbhc wusbhc; struct wahc wa; } ;
struct TYPE_2__ {scalar_t__ bNumPorts; int /*<<< orphan*/  bNumMMCIEs; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ USB_MAXCHILDREN ; 
 int /*<<< orphan*/  __hwahc_op_bwa_set ; 
 int /*<<< orphan*/  __hwahc_op_dev_info_set ; 
 int /*<<< orphan*/  __hwahc_op_mmcie_add ; 
 int /*<<< orphan*/  __hwahc_op_mmcie_rm ; 
 int /*<<< orphan*/  __hwahc_op_set_gtk ; 
 int /*<<< orphan*/  __hwahc_op_set_num_dnts ; 
 int /*<<< orphan*/  __hwahc_op_set_ptk ; 
 int /*<<< orphan*/  __hwahc_op_wusbhc_start ; 
 int /*<<< orphan*/  __hwahc_op_wusbhc_stop ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct hwahc*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct wahc*,struct usb_interface*) ; 
 int FUNC10 (struct wahc*) ; 
 int FUNC11 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC12 (struct wusbhc*) ; 

__attribute__((used)) static int FUNC13(struct hwahc *hwahc, struct usb_interface *iface)
{
	int result;
	struct device *dev = &iface->dev;
	struct wusbhc *wusbhc = &hwahc->wusbhc;
	struct wahc *wa = &hwahc->wa;
	struct usb_device *usb_dev = FUNC2(iface);

	wa->usb_dev = FUNC3(usb_dev);	/* bind the USB device */
	wa->usb_iface = FUNC4(iface);
	wusbhc->dev = dev;
	wusbhc->uwb_rc = FUNC7(iface->dev.parent);
	if (wusbhc->uwb_rc == NULL) {
		result = -ENODEV;
		FUNC0(dev, "Cannot get associated UWB Host Controller\n");
		goto error_rc_get;
	}
	result = FUNC10(wa);	/* Get the device descriptor */
	if (result < 0)
		goto error_fill_descriptor;
	if (wa->wa_descr->bNumPorts > USB_MAXCHILDREN) {
		FUNC0(dev, "FIXME: USB_MAXCHILDREN too low for WUSB "
			"adapter (%u ports)\n", wa->wa_descr->bNumPorts);
		wusbhc->ports_max = USB_MAXCHILDREN;
	} else {
		wusbhc->ports_max = wa->wa_descr->bNumPorts;
	}
	wusbhc->mmcies_max = wa->wa_descr->bNumMMCIEs;
	wusbhc->start = __hwahc_op_wusbhc_start;
	wusbhc->stop = __hwahc_op_wusbhc_stop;
	wusbhc->mmcie_add = __hwahc_op_mmcie_add;
	wusbhc->mmcie_rm = __hwahc_op_mmcie_rm;
	wusbhc->dev_info_set = __hwahc_op_dev_info_set;
	wusbhc->bwa_set = __hwahc_op_bwa_set;
	wusbhc->set_num_dnts = __hwahc_op_set_num_dnts;
	wusbhc->set_ptk = __hwahc_op_set_ptk;
	wusbhc->set_gtk = __hwahc_op_set_gtk;
	result = FUNC1(hwahc);
	if (result < 0) {
		FUNC0(dev, "Can't initialize security: %d\n", result);
		goto error_security_create;
	}
	wa->wusb = wusbhc;	/* FIXME: ugly, need to fix */
	result = FUNC11(&hwahc->wusbhc);
	if (result < 0) {
		FUNC0(dev, "Can't create WUSB HC structures: %d\n", result);
		goto error_wusbhc_create;
	}
	result = FUNC9(&hwahc->wa, iface);
	if (result < 0)
		goto error_wa_create;
	return 0;

error_wa_create:
	FUNC12(&hwahc->wusbhc);
error_wusbhc_create:
	/* WA Descr fill allocs no resources */
error_security_create:
error_fill_descriptor:
	FUNC8(wusbhc->uwb_rc);
error_rc_get:
	FUNC6(iface);
	FUNC5(usb_dev);
	return result;
}