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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
#define  NETDEV_CHANGEADDR 129 
#define  NETDEV_DOWN 128 
 int NOTIFY_DONE ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*,int) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *this, unsigned long event, void *ptr)
{
	struct net_device *dev = ptr;
	struct net *net = FUNC0(dev);

	switch (event) {
	case NETDEV_CHANGEADDR:
		FUNC2(&nd_tbl, dev);
		FUNC1(0, net, false);
		break;
	case NETDEV_DOWN:
		FUNC3(&nd_tbl, dev);
		FUNC1(0, net, false);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}