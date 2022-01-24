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
struct usb_hcd {int dummy; } ;
struct usb_device {int /*<<< orphan*/  portnum; int /*<<< orphan*/  devnum; TYPE_1__* parent; } ;
struct ehci_hcd {scalar_t__ has_lpm; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd, struct usb_device *udev)
{
	struct ehci_hcd *ehci = FUNC2(hcd);
	int rc = 0;

	if (!udev->parent) /* udev is root hub itself, impossible */
		rc = -1;
	/* we only support lpm device connected to root hub yet */
	if (ehci->has_lpm && !udev->parent->parent) {
		rc = FUNC1(ehci, udev->devnum, udev->portnum);
		if (!rc)
			rc = FUNC0(ehci, udev->portnum);
	}
	return rc;
}