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
struct netdev_rps_info {int /*<<< orphan*/  queues_kset; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int real_num_tx_queues; TYPE_1__ dev; } ;
struct TYPE_4__ {int real_num_rx_queues; struct netdev_rps_info rps_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,int,int) ; 
 TYPE_2__* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *net)
{
	int error = 0, txq = 0, rxq = 0, real_rx = 0, real_tx = 0;
	struct netdev_rps_info *rpinfo = &FUNC2(net)->rps_data;


#ifdef CONFIG_SYSFS
	rpinfo->queues_kset = kset_create_and_add("queues",
	   NULL, &net->dev.kobj);
	if (!rpinfo->queues_kset)
		return -ENOMEM;
#endif

#ifdef CONFIG_RPS
	real_rx = netdev_extended(net)->real_num_rx_queues;
#endif
	real_tx = net->real_num_tx_queues;

	error = FUNC1(net, 0, real_rx);
	if (error)
		goto error;
	rxq = real_rx;

	error = FUNC3(net, 0, real_tx);
	if (error)
		goto error;
	txq = real_tx;

	return 0;

error:
	FUNC3(net, txq, 0);
	FUNC1(net, rxq, 0);
	return error;
}