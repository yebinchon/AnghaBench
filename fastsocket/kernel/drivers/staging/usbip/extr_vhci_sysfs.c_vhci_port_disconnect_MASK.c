#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  lock; } ;
struct vhci_device {TYPE_1__ ud; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VDEV_EVENT_DOWN ; 
 scalar_t__ VDEV_ST_NULL ; 
 struct vhci_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* the_controller ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(__u32 rhport)
{
	struct vhci_device *vdev;

	FUNC3("enter\n");

	/* lock */
	FUNC1(&the_controller->lock);

	vdev = FUNC0(rhport);

	FUNC1(&vdev->ud.lock);
	if (vdev->ud.status == VDEV_ST_NULL) {
		FUNC5("not connected %d\n", vdev->ud.status);

		/* unlock */
		FUNC2(&vdev->ud.lock);
		FUNC2(&the_controller->lock);

		return -EINVAL;
	}

	/* unlock */
	FUNC2(&vdev->ud.lock);
	FUNC2(&the_controller->lock);

	FUNC4(&vdev->ud, VDEV_EVENT_DOWN);

	return 0;
}