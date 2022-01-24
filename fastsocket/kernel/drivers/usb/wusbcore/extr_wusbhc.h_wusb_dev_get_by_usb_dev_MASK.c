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
struct wusbhc {int /*<<< orphan*/  mutex; } ;
struct wusb_dev {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 struct wusb_dev* FUNC0 (struct wusbhc*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*) ; 

__attribute__((used)) static inline
struct wusb_dev *FUNC5(struct usb_device *usb_dev)
{
	struct wusbhc *wusbhc;
	struct wusb_dev *wusb_dev;
	wusbhc = FUNC3(usb_dev);
	if (wusbhc == NULL)
		return NULL;
	FUNC1(&wusbhc->mutex);
	wusb_dev = FUNC0(wusbhc, usb_dev);
	FUNC2(&wusbhc->mutex);
	FUNC4(wusbhc);
	return wusb_dev;
}