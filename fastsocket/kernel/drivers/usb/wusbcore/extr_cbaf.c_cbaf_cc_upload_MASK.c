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
struct wusb_cbaf_cc_data {int /*<<< orphan*/  CDID; int /*<<< orphan*/  CHID; int /*<<< orphan*/  BandGroups; int /*<<< orphan*/  CK; } ;
struct device {int dummy; } ;
struct cbaf {char* host_band_groups; TYPE_3__* usb_iface; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  ck; int /*<<< orphan*/  cdid; int /*<<< orphan*/  chid; struct wusb_cbaf_cc_data* buffer; } ;
typedef  int /*<<< orphan*/  pr_cdid ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBAF_REQ_SET_ASSOCIATION_RESPONSE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int WUSB_CKHDID_STRSIZE ; 
 struct wusb_cbaf_cc_data cbaf_cc_data_defaults ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct wusb_cbaf_cc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cbaf *cbaf)
{
	int result;
	struct device *dev = &cbaf->usb_iface->dev;
	struct wusb_cbaf_cc_data *ccd;
	char pr_cdid[WUSB_CKHDID_STRSIZE];

	ccd =  cbaf->buffer;
	*ccd = cbaf_cc_data_defaults;
	ccd->CHID = cbaf->chid;
	ccd->CDID = cbaf->cdid;
	ccd->CK = cbaf->ck;
	ccd->BandGroups = FUNC1(cbaf->host_band_groups);

	FUNC2(dev, "Trying to upload CC:\n");
	FUNC0(pr_cdid, sizeof(pr_cdid), &ccd->CHID);
	FUNC2(dev, "  CHID       %s\n", pr_cdid);
	FUNC0(pr_cdid, sizeof(pr_cdid), &ccd->CDID);
	FUNC2(dev, "  CDID       %s\n", pr_cdid);
	FUNC2(dev, "  Bandgroups 0x%04x\n", cbaf->host_band_groups);

	result = FUNC3(
		cbaf->usb_dev, FUNC4(cbaf->usb_dev, 0),
		CBAF_REQ_SET_ASSOCIATION_RESPONSE,
		USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
		0x0201, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
		ccd, sizeof(*ccd), 1000 /* FIXME: arbitrary */);

	return result;
}