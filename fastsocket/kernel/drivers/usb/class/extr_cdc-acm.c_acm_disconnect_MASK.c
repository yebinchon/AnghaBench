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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct acm {TYPE_1__ port; struct usb_interface* control; struct usb_interface* data; int /*<<< orphan*/  combined_interfaces; int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/  ctrl_buffer; int /*<<< orphan*/  ctrlsize; int /*<<< orphan*/ * dev; scalar_t__ country_codes; } ;

/* Variables and functions */
 int /*<<< orphan*/  acm_driver ; 
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (struct acm*) ; 
 int /*<<< orphan*/  FUNC2 (struct acm*) ; 
 int /*<<< orphan*/  dev_attr_bmCapabilities ; 
 int /*<<< orphan*/  dev_attr_iCountryCodeRelDate ; 
 int /*<<< orphan*/  dev_attr_wCountryCodes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct acm*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 struct tty_struct* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct acm* FUNC13 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct usb_interface *intf)
{
	struct acm *acm = FUNC13(intf);
	struct usb_device *usb_dev = FUNC4(intf);
	struct tty_struct *tty;

	/* sibling interface is already cleaning up */
	if (!acm)
		return;

	FUNC5(&open_mutex);
	if (acm->country_codes) {
		FUNC3(&acm->control->dev,
				&dev_attr_wCountryCodes);
		FUNC3(&acm->control->dev,
				&dev_attr_iCountryCodeRelDate);
	}
	FUNC3(&acm->control->dev, &dev_attr_bmCapabilities);
	acm->dev = NULL;
	FUNC14(acm->control, NULL);
	FUNC14(acm->data, NULL);

	FUNC7(acm);

	FUNC2(acm);
	FUNC11(usb_dev, acm->ctrlsize, acm->ctrl_buffer,
								acm->ctrl_dma);
	FUNC0(acm);

	if (!acm->combined_interfaces)
		FUNC12(&acm_driver, intf == acm->control ?
					acm->data : acm->control);

	if (acm->port.count == 0) {
		FUNC1(acm);
		FUNC6(&open_mutex);
		return;
	}

	FUNC6(&open_mutex);
	tty = FUNC10(&acm->port);
	if (tty) {
		FUNC8(tty);
		FUNC9(tty);
	}
}