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
typedef  int /*<<< orphan*/  u8 ;
struct wusbhc {int /*<<< orphan*/  mutex; } ;
struct wusb_dev {int /*<<< orphan*/  usb_dev; } ;
struct device {int dummy; } ;
struct usb_device {scalar_t__ wusb; int devnum; int /*<<< orphan*/  wusb_dev; int /*<<< orphan*/  portnum; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_STATE_UNAUTHENTICATED ; 
 struct wusb_dev* FUNC0 (struct wusbhc*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_device*,struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct wusb_dev*) ; 
 int FUNC11 (struct wusbhc*,struct usb_device*,struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct wusb_dev*) ; 
 int FUNC13 (struct wusbhc*,struct usb_device*,struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct wusbhc* FUNC17 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC19(struct usb_device *usb_dev)
{
	int result = 0;
	struct wusb_dev *wusb_dev;
	struct wusbhc *wusbhc;
	struct device *dev = &usb_dev->dev;
	u8 port_idx;

	if (usb_dev->wusb == 0 || usb_dev->devnum == 1)
		return;		/* skip non wusb and wusb RHs */

	FUNC6(usb_dev, USB_STATE_UNAUTHENTICATED);

	wusbhc = FUNC17(usb_dev);
	if (wusbhc == NULL)
		goto error_nodev;
	FUNC3(&wusbhc->mutex);
	wusb_dev = FUNC0(wusbhc, usb_dev);
	port_idx = FUNC16(usb_dev->portnum);
	FUNC4(&wusbhc->mutex);
	if (wusb_dev == NULL)
		goto error_nodev;
	wusb_dev->usb_dev = FUNC5(usb_dev);
	usb_dev->wusb_dev = FUNC9(wusb_dev);
	result = FUNC11(wusbhc, usb_dev, wusb_dev);
	if (result < 0) {
		FUNC2(dev, "Cannot enable security: %d\n", result);
		goto error_sec_add;
	}
	/* Now query the device for it's BOS and attach it to wusb_dev */
	result = FUNC7(usb_dev, wusb_dev);
	if (result < 0) {
		FUNC2(dev, "Cannot get BOS descriptors: %d\n", result);
		goto error_bos_add;
	}
	result = FUNC13(wusbhc, usb_dev, wusb_dev);
	if (result < 0)
		goto error_add_sysfs;
out:
	FUNC10(wusb_dev);
	FUNC18(wusbhc);
error_nodev:
	return;

	FUNC14(wusb_dev);
error_add_sysfs:
	FUNC8(wusb_dev);
error_bos_add:
	FUNC12(wusb_dev);
error_sec_add:
	FUNC3(&wusbhc->mutex);
	FUNC1(wusbhc, FUNC15(wusbhc, port_idx));
	FUNC4(&wusbhc->mutex);
	goto out;
}