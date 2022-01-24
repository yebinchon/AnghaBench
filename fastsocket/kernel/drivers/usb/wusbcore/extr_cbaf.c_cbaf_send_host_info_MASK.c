#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct wusb_cbaf_host_info {TYPE_1__ HostFriendlyName_hdr; int /*<<< orphan*/  HostFriendlyName; scalar_t__ LangID; int /*<<< orphan*/  CHID; } ;
struct cbaf {TYPE_4__* usb_iface; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  host_name; int /*<<< orphan*/  chid; struct wusb_cbaf_host_info* buffer; } ;
struct TYPE_8__ {TYPE_3__* cur_altsetting; } ;
struct TYPE_6__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBAF_REQ_SET_ASSOCIATION_RESPONSE ; 
 int /*<<< orphan*/  CBA_NAME_LEN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 struct wusb_cbaf_host_info cbaf_host_info_defaults ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wusb_cbaf_host_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct wusb_cbaf_host_info*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cbaf *cbaf)
{
	struct wusb_cbaf_host_info *hi;
	size_t name_len;
	size_t hi_size;

	hi = cbaf->buffer;
	FUNC1(hi, 0, sizeof(*hi));
	*hi = cbaf_host_info_defaults;
	hi->CHID = cbaf->chid;
	hi->LangID = 0;	/* FIXME: I guess... */
	FUNC2(hi->HostFriendlyName, cbaf->host_name, CBA_NAME_LEN);
	name_len = FUNC3(cbaf->host_name);
	hi->HostFriendlyName_hdr.len = FUNC0(name_len);
	hi_size = sizeof(*hi) + name_len;

	return FUNC4(cbaf->usb_dev, FUNC5(cbaf->usb_dev, 0),
			CBAF_REQ_SET_ASSOCIATION_RESPONSE,
			USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			0x0101,
			cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
			hi, hi_size, 1000 /* FIXME: arbitrary */);
}