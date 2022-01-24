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
struct vhci_hcd {struct vhci_device* vdev; } ;
struct vhci_device {int /*<<< orphan*/  ud; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDEV_EVENT_REMOVED ; 
 int VHCI_NPORTS ; 
 int /*<<< orphan*/  dev_attr_group ; 
 struct vhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (struct vhci_hcd*) ; 

__attribute__((used)) static void FUNC7(struct usb_hcd *hcd)
{
	struct vhci_hcd *vhci = FUNC0(hcd);
	int rhport = 0;

	FUNC2("stop VHCI controller\n");


	/* 1. remove the userland interface of vhci_hcd */
	FUNC1(&FUNC6(vhci)->kobj, &dev_attr_group);

	/* 2. shutdown all the ports of vhci_hcd */
	for (rhport = 0 ; rhport < VHCI_NPORTS; rhport++) {
		struct vhci_device *vdev = &vhci->vdev[rhport];

		FUNC3(&vdev->ud, VDEV_EVENT_REMOVED);
		FUNC4(&vdev->ud);
	}


	FUNC5("vhci_stop done\n");
}