#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wusbhc {int /*<<< orphan*/  usb_hcd; } ;
struct wusb_dev {int /*<<< orphan*/  devconnect_acked_work; int /*<<< orphan*/  cack_node; int /*<<< orphan*/  entry_ts; } ;
struct urb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct wusb_dev* FUNC0 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wusb_dev*) ; 
 int /*<<< orphan*/  wusbd ; 

void FUNC5(struct wusbhc *wusbhc, struct urb *urb, int status)
{
	struct wusb_dev *wusb_dev = FUNC0(wusbhc, urb->dev);

	if (status == 0 && wusb_dev) {
		wusb_dev->entry_ts = jiffies;

		/* wusbhc_devconnect_acked() can't be called from
		   atomic context so defer it to a work queue. */
		if (!FUNC1(&wusb_dev->cack_node))
			FUNC2(wusbd, &wusb_dev->devconnect_acked_work);
		else
			FUNC4(wusb_dev);
	}

	FUNC3(&wusbhc->usb_hcd, urb, status);
}