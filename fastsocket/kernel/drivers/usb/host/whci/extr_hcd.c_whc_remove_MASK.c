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
struct wusbhc {int /*<<< orphan*/  uwb_rc; } ;
struct whc {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct umc_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct whc*) ; 
 int /*<<< orphan*/  FUNC6 (struct whc*) ; 
 int /*<<< orphan*/  FUNC7 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC8 (struct wusbhc*) ; 
 struct whc* FUNC9 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC10(struct umc_dev *umc)
{
	struct usb_hcd *usb_hcd = FUNC0(&umc->dev);
	struct wusbhc *wusbhc = FUNC1(usb_hcd);
	struct whc *whc = FUNC9(wusbhc);

	if (usb_hcd) {
		FUNC6(whc);
		FUNC7(wusbhc);
		FUNC3(usb_hcd);
		FUNC8(wusbhc);
		FUNC4(wusbhc->uwb_rc);
		FUNC5(whc);
		FUNC2(usb_hcd);
	}
}