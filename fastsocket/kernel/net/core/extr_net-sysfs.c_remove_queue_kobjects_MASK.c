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
struct netdev_rps_info {int /*<<< orphan*/  queues_kset; } ;
struct net_device {int real_num_tx_queues; } ;
struct TYPE_2__ {int real_num_rx_queues; struct netdev_rps_info rps_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *net)
{
	int real_rx = 0, real_tx = 0;
	struct netdev_rps_info *rpinfo = &FUNC2(net)->rps_data;


#ifdef CONFIG_RPS
	real_rx = netdev_extended(net)->real_num_rx_queues;
#endif
	real_tx = net->real_num_tx_queues;

	FUNC1(net, real_rx, 0);
	FUNC3(net, real_tx, 0);
#ifdef CONFIG_SYSFS
	kset_unregister(rpinfo->queues_kset);
#endif
}