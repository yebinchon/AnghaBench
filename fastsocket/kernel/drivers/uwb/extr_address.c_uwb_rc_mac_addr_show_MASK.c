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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mac_addr {int dummy; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_ADDR_MAC ; 
 int /*<<< orphan*/  UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct uwb_dev* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct uwb_mac_addr*) ; 
 scalar_t__ FUNC4 (struct uwb_rc*,struct uwb_mac_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct uwb_dev *uwb_dev = FUNC2(dev);
	struct uwb_rc *rc = uwb_dev->rc;
	struct uwb_mac_addr addr;
	ssize_t result;

	FUNC0(&rc->uwb_dev.mutex);
	result = FUNC4(rc, &addr, UWB_ADDR_MAC);
	FUNC1(&rc->uwb_dev.mutex);
	if (result >= 0) {
		result = FUNC3(buf, UWB_ADDR_STRSIZE, &addr);
		buf[result++] = '\n';
	}
	return result;
}