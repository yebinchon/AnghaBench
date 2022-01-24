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
struct wimax_dev {int /*<<< orphan*/  mutex; struct net_device* net_dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  addr_str ;

/* Variables and functions */
 int /*<<< orphan*/  WIMAX_ST_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct wimax_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,struct net_device*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct wimax_dev*) ; 
 int FUNC10 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct wimax_dev*) ; 

int FUNC12(struct wimax_dev *wimax_dev, struct net_device *net_dev)
{
	int result;
	struct device *dev = net_dev->dev.parent;
	char addr_str[32];

	FUNC2(3, dev, "(wimax_dev %p net_dev %p)\n", wimax_dev, net_dev);

	/* Do the RFKILL setup before locking, as RFKILL will call
	 * into our functions. */
	wimax_dev->net_dev = net_dev;
	result = FUNC10(wimax_dev);
	if (result < 0)
		goto error_rfkill_add;

	/* Set up user-space interaction */
	FUNC4(&wimax_dev->mutex);
	FUNC8(wimax_dev);
	result = FUNC7(wimax_dev);
	if (result < 0) {
		FUNC3(dev, "cannot initialize debugfs: %d\n",
			result);
		goto error_debugfs_add;
	}

	FUNC0(wimax_dev, WIMAX_ST_DOWN);
	FUNC5(&wimax_dev->mutex);

	FUNC6(addr_str, sizeof(addr_str),
			    net_dev->dev_addr, net_dev->addr_len);
	FUNC3(dev, "WiMAX interface %s (%s) ready\n",
		net_dev->name, addr_str);
	FUNC1(3, dev, "(wimax_dev %p net_dev %p) = 0\n", wimax_dev, net_dev);
	return 0;

error_debugfs_add:
	FUNC9(wimax_dev);
	FUNC5(&wimax_dev->mutex);
	FUNC11(wimax_dev);
error_rfkill_add:
	FUNC1(3, dev, "(wimax_dev %p net_dev %p) = %d\n",
		wimax_dev, net_dev, result);
	return result;
}