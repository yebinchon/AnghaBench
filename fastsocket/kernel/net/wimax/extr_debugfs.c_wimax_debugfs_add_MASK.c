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
struct wimax_dev {struct dentry* debugfs_dentry; struct net_device* net_dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {char* name; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  debugfs ; 
 struct dentry* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  id_table ; 
 int /*<<< orphan*/  op_msg ; 
 int /*<<< orphan*/  op_reset ; 
 int /*<<< orphan*/  op_rfkill ; 
 int /*<<< orphan*/  op_state_get ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stack ; 

int FUNC7(struct wimax_dev *wimax_dev)
{
	int result;
	struct net_device *net_dev = wimax_dev->net_dev;
	struct device *dev = net_dev->dev.parent;
	struct dentry *dentry;
	char buf[128];

	FUNC6(buf, sizeof(buf), "wimax:%s", net_dev->name);
	dentry = FUNC3(buf, NULL);
	result = FUNC1(dentry);
	if (FUNC0(dentry)) {
		if (result == -ENODEV)
			result = 0;	/* No debugfs support */
		else
			FUNC5(dev, "Can't create debugfs dentry: %d\n",
				result);
		goto out;
	}
	wimax_dev->debugfs_dentry = dentry;
	FUNC2("wimax_dl_", debugfs, dentry);
	FUNC2("wimax_dl_", id_table, dentry);
	FUNC2("wimax_dl_", op_msg, dentry);
	FUNC2("wimax_dl_", op_reset, dentry);
	FUNC2("wimax_dl_", op_rfkill, dentry);
	FUNC2("wimax_dl_", op_state_get, dentry);
	FUNC2("wimax_dl_", stack, dentry);
	result = 0;
out:
	return result;

error:
	FUNC4(wimax_dev->debugfs_dentry);
	return result;
}