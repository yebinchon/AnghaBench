#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bLength; } ;
struct wuie_keep_alive {int* bDeviceAddress; TYPE_2__ hdr; } ;
struct wusbhc {unsigned int ports_max; int /*<<< orphan*/  trust_timeout; struct wuie_keep_alive keep_alive_ie; struct device* dev; } ;
struct wusb_port {struct wusb_dev* wusb_dev; } ;
struct wusb_dev {int addr; scalar_t__ entry_ts; TYPE_1__* usb_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  authenticated; } ;

/* Variables and functions */
 unsigned int WUIE_ELT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,struct wusb_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct wusb_port* FUNC4 (struct wusbhc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct wusbhc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct wusbhc*,int,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct wusbhc *wusbhc)
{
	struct device *dev = wusbhc->dev;
	unsigned cnt;
	struct wusb_dev *wusb_dev;
	struct wusb_port *wusb_port;
	struct wuie_keep_alive *ie = &wusbhc->keep_alive_ie;
	unsigned keep_alives, old_keep_alives;

	old_keep_alives = ie->hdr.bLength - sizeof(ie->hdr);
	keep_alives = 0;
	for (cnt = 0;
	     keep_alives <= WUIE_ELT_MAX && cnt < wusbhc->ports_max;
	     cnt++) {
		unsigned tt = FUNC2(wusbhc->trust_timeout);

		wusb_port = FUNC4(wusbhc, cnt);
		wusb_dev = wusb_port->wusb_dev;

		if (wusb_dev == NULL)
			continue;
		if (wusb_dev->usb_dev == NULL || !wusb_dev->usb_dev->authenticated)
			continue;

		if (FUNC3(jiffies, wusb_dev->entry_ts + tt)) {
			FUNC1(dev, "KEEPALIVE: device %u timed out\n",
				wusb_dev->addr);
			FUNC0(wusbhc, wusb_port);
		} else if (FUNC3(jiffies, wusb_dev->entry_ts + tt/2)) {
			/* Approaching timeout cut out, need to refresh */
			ie->bDeviceAddress[keep_alives++] = wusb_dev->addr;
		}
	}
	if (keep_alives & 0x1)	/* pad to even number ([WUSB] section 7.5.9) */
		ie->bDeviceAddress[keep_alives++] = 0x7f;
	ie->hdr.bLength = sizeof(ie->hdr) +
		keep_alives*sizeof(ie->bDeviceAddress[0]);
	if (keep_alives > 0)
		FUNC6(wusbhc, 10, 5, &ie->hdr);
	else if (old_keep_alives != 0)
		FUNC5(wusbhc, &ie->hdr);
}