#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  tcp_socket; } ;
struct vhci_device {int speed; int devid; TYPE_2__ ud; TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VDEV_ST_USED ; 
 int VHCI_NPORTS ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct vhci_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 TYPE_3__* the_controller ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   char *out)
{
	char *s = out;
	int i = 0;

	FUNC0(!the_controller || !out);

	FUNC3(&the_controller->lock);

	/*
	 * output example:
	 * prt sta spd dev socket           local_busid
	 * 000 004 000 000         c5a7bb80 1-2.3
	 * 001 004 000 000         d8cee980 2-3.4
	 *
	 * IP address can be retrieved from a socket pointer address by looking
	 * up /proc/net/{tcp,tcp6}. Also, a userland program may remember a
	 * port number and its peer IP address.
	 */
	out += FUNC5(out, "prt sta spd bus dev socket           "
		       "local_busid\n");

	for (i = 0; i < VHCI_NPORTS; i++) {
		struct vhci_device *vdev = FUNC2(i);

		FUNC3(&vdev->ud.lock);

		out += FUNC5(out, "%03u %03u ", i, vdev->ud.status);

		if (vdev->ud.status == VDEV_ST_USED) {
			out += FUNC5(out, "%03u %08x ",
					vdev->speed, vdev->devid);
			out += FUNC5(out, "%16p ", vdev->ud.tcp_socket);
			out += FUNC5(out, "%s", FUNC1(&vdev->udev->dev));

		} else
			out += FUNC5(out, "000 000 000 0000000000000000 0-0");

		out += FUNC5(out, "\n");

		FUNC4(&vdev->ud.lock);
	}

	FUNC4(&the_controller->lock);

	return out - s;
}