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
struct vhci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  seqnum; struct vhci_device* vdev; } ;
struct vhci_device {int rhport; } ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  state; scalar_t__ power_budget; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int VHCI_NPORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_group ; 
 struct vhci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (struct vhci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhci_device*) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd)
{
	struct vhci_hcd *vhci = FUNC1(hcd);
	int rhport;
	int err = 0;

	FUNC4("enter vhci_start\n");


	/* initialize private data of usb_hcd */

	for (rhport = 0; rhport < VHCI_NPORTS; rhport++) {
		struct vhci_device *vdev = &vhci->vdev[rhport];
		FUNC7(vdev);
		vdev->rhport = rhport;
	}

	FUNC0(&vhci->seqnum, 0);
	FUNC2(&vhci->lock);



	hcd->power_budget = 0; /* no limit */
	hcd->state  = HC_STATE_RUNNING;
	hcd->uses_new_polling = 1;


	/* vhci_hcd is now ready to be controlled through sysfs */
	err = FUNC3(&FUNC6(vhci)->kobj, &dev_attr_group);
	if (err) {
		FUNC5("create sysfs files\n");
		return err;
	}

	return 0;
}