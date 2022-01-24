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
struct vport {int dummy; } ;
struct ovs_net {int /*<<< orphan*/  dp_notify_work; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct ovs_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ovs_net_id ; 
 struct vport* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *unused, unsigned long event,
			   void *ptr)
{
	struct ovs_net *ovs_net;
	struct net_device *dev = ptr;
	struct vport *vport = NULL;

	if (!FUNC2(dev))
		vport = FUNC3(dev);

	if (!vport)
		return NOTIFY_DONE;

	if (event == NETDEV_UNREGISTER) {
		ovs_net = FUNC1(FUNC0(dev), ovs_net_id);
		FUNC4(&ovs_net->dp_notify_work);
	}

	return NOTIFY_DONE;
}