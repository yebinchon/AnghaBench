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
struct usb_hcd {int dummy; } ;
struct ohci_hcd {int dummy; } ;
struct ssb_ohci_device {struct ohci_hcd ohci; } ;

/* Variables and functions */
 struct ssb_ohci_device* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*) ; 
 int FUNC2 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct ssb_ohci_device *ohcidev = FUNC0(hcd);
	struct ohci_hcd *ohci = &ohcidev->ohci;
	int err;

	err = FUNC2(ohci);
	if (err < 0) {
		FUNC1(ohci, "can't start\n");
		FUNC3(hcd);
	}

	return err;
}