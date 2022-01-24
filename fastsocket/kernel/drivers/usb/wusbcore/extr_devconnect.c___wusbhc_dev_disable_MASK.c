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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wusbhc {struct device* dev; } ;
struct wusb_dev {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int bLength; int /*<<< orphan*/  bIEIdentifier; } ;
struct wuie_disconnect {TYPE_1__ hdr; int /*<<< orphan*/  bDeviceAddress; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct wusb_dev* wusb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WUIE_ID_DEVICE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wuie_disconnect*) ; 
 struct wuie_disconnect* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wusbhc*,TYPE_1__*) ; 
 int FUNC8 (struct wusbhc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC9(struct wusbhc *wusbhc, u8 port_idx)
{
	int result;
	struct device *dev = wusbhc->dev;
	struct wusb_dev *wusb_dev;
	struct wuie_disconnect *ie;

	wusb_dev = FUNC6(wusbhc, port_idx)->wusb_dev;
	if (wusb_dev == NULL) {
		/* reset no device? ignore */
		FUNC1(dev, "DISCONNECT: no device at port %u, ignoring\n",
			port_idx);
		return;
	}
	FUNC0(wusbhc, FUNC6(wusbhc, port_idx));

	ie = FUNC4(sizeof(*ie), GFP_KERNEL);
	if (ie == NULL)
		return;
	ie->hdr.bLength = sizeof(*ie);
	ie->hdr.bIEIdentifier = WUIE_ID_DEVICE_DISCONNECT;
	ie->bDeviceAddress = wusb_dev->addr;
	result = FUNC8(wusbhc, 0, 0, &ie->hdr);
	if (result < 0)
		FUNC2(dev, "DISCONNECT: can't set MMC: %d\n", result);
	else {
		/* At least 6 MMCs, assuming at least 1 MMC per zone. */
		FUNC5(7*4);
		FUNC7(wusbhc, &ie->hdr);
	}
	FUNC3(ie);
}