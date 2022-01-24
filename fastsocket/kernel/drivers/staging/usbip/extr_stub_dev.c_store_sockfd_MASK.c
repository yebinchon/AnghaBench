#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  lock; struct socket* tcp_socket; } ;
struct stub_device {TYPE_1__ ud; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 int /*<<< orphan*/  SDEV_EVENT_DOWN ; 
 scalar_t__ SDEV_ST_AVAILABLE ; 
 scalar_t__ SDEV_ST_USED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct stub_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 struct socket* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct stub_device *sdev = FUNC1(dev);
	int sockfd = 0;
	struct socket *socket;

	if (!sdev) {
		FUNC0(dev, "sdev is null\n");
		return -ENODEV;
	}

	FUNC9(buf, "%d", &sockfd);

	if (sockfd != -1) {
		FUNC2(dev, "stub up\n");

		FUNC7(&sdev->ud.lock);

		if (sdev->ud.status != SDEV_ST_AVAILABLE) {
			FUNC0(dev, "not ready\n");
			FUNC8(&sdev->ud.lock);
			return -EINVAL;
		}

		socket = FUNC6(sockfd);
		if (!socket) {
			FUNC8(&sdev->ud.lock);
			return -EINVAL;
		}

#if 0
		setnodelay(socket);
		setkeepalive(socket);
		setreuse(socket);
#endif

		sdev->ud.tcp_socket = socket;

		FUNC8(&sdev->ud.lock);

		FUNC11(&sdev->ud);

		FUNC7(&sdev->ud.lock);
		sdev->ud.status = SDEV_ST_USED;
		FUNC8(&sdev->ud.lock);

	} else {
		FUNC2(dev, "stub down\n");

		FUNC7(&sdev->ud.lock);
		if (sdev->ud.status != SDEV_ST_USED) {
			FUNC8(&sdev->ud.lock);
			return -EINVAL;
		}
		FUNC8(&sdev->ud.lock);

		FUNC10(&sdev->ud, SDEV_EVENT_DOWN);
	}

	return count;
}