#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct net_device {int dummy; } ;
struct i1480u {struct net_device* net_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct i1480u*,struct usb_interface*) ; 
 int /*<<< orphan*/  i1480u_netdev_setup ; 
 int /*<<< orphan*/  FUNC5 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC6 (struct i1480u*) ; 
 struct i1480u* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *iface,
			const struct usb_device_id *id)
{
	int result;
	struct net_device *net_dev;
	struct device *dev = &iface->dev;
	struct i1480u *i1480u;

	/* Allocate instance [calls i1480u_netdev_setup() on it] */
	result = -ENOMEM;
	net_dev = FUNC1(sizeof(*i1480u), "wlp%d", i1480u_netdev_setup);
	if (net_dev == NULL) {
		FUNC2(dev, "no memory for network device instance\n");
		goto error_alloc_netdev;
	}
	FUNC0(net_dev, dev);
	i1480u = FUNC7(net_dev);
	i1480u->net_dev = net_dev;
	result = FUNC4(i1480u, iface);	/* Now setup all the wlp stuff */
	if (result < 0) {
		FUNC2(dev, "cannot add i1480u device: %d\n", result);
		goto error_i1480u_add;
	}
	result = FUNC8(net_dev);	/* Okey dokey, bring it up */
	if (result < 0) {
		FUNC2(dev, "cannot register network device: %d\n", result);
		goto error_register_netdev;
	}
	FUNC6(i1480u);
	if (result < 0)
		goto error_sysfs_init;
	return 0;

error_sysfs_init:
	FUNC9(net_dev);
error_register_netdev:
	FUNC5(i1480u);
error_i1480u_add:
	FUNC3(net_dev);
error_alloc_netdev:
	return result;
}