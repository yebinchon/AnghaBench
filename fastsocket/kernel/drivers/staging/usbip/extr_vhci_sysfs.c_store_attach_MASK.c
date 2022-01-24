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
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  lock; struct socket* tcp_socket; } ;
struct vhci_device {TYPE_1__ ud; void* speed; void* devid; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  void* __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ VDEV_ST_NOTASSIGNED ; 
 scalar_t__ VDEV_ST_NULL ; 
 struct vhci_device* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 struct socket* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,void**,int*,void**,void**) ; 
 TYPE_2__* the_controller ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,int,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*,int,void*,void*) ; 
 scalar_t__ FUNC10 (void*,void*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct vhci_device *vdev;
	struct socket *socket;
	int sockfd = 0;
	__u32 rhport = 0, devid = 0, speed = 0;

	/*
	 * @rhport: port number of vhci_hcd
	 * @sockfd: socket descriptor of an established TCP connection
	 * @devid: unique device identifier in a remote host
	 * @speed: usb device speed in a remote host
	 */
	FUNC5(buf, "%u %u %u %u", &rhport, &sockfd, &devid, &speed);

	FUNC6("rhport(%u) sockfd(%u) devid(%u) speed(%u)\n",
				rhport, sockfd, devid, speed);


	/* check received parameters */
	if (FUNC10(rhport, speed) < 0)
		return -EINVAL;

	/* check sockfd */
	socket = FUNC2(sockfd);
	if (!socket)
		return  -EINVAL;

	/* now need lock until setting vdev status as used */

	/* begin a lock */
	FUNC3(&the_controller->lock);

	vdev = FUNC0(rhport);

	FUNC3(&vdev->ud.lock);

	if (vdev->ud.status != VDEV_ST_NULL) {
		/* end of the lock */
		FUNC4(&vdev->ud.lock);
		FUNC4(&the_controller->lock);

		FUNC8("port %d already used\n", rhport);
		return -EINVAL;
	}

	FUNC9("rhport(%u) sockfd(%d) devid(%u) speed(%u)\n",
				rhport, sockfd, devid, speed);

	vdev->devid         = devid;
	vdev->speed         = speed;
	vdev->ud.tcp_socket = socket;
	vdev->ud.status     = VDEV_ST_NOTASSIGNED;

	FUNC4(&vdev->ud.lock);
	FUNC4(&the_controller->lock);
	/* end the lock */

	/*
	 * this function will sleep, so should be out of the lock. but, it's ok
	 * because we already marked vdev as being used. really?
	 */
	FUNC7(&vdev->ud);

	FUNC1(rhport, speed);

	return count;
}