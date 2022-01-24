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
struct vport {int dummy; } ;
struct netdev_vport {int /*<<< orphan*/  rcu; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ax25_ptr; int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_OVS_DATAPATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  free_port_rcu ; 
 struct netdev_vport* FUNC3 (struct vport*) ; 
 int /*<<< orphan*/  nr_bridges ; 
 int /*<<< orphan*/ * openvswitch_handle_frame_hook ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct vport *vport)
{
	struct netdev_vport *netdev_vport = FUNC3(vport);

	FUNC4();
	netdev_vport->dev->priv_flags &= ~IFF_OVS_DATAPATH;
	netdev_vport->dev->ax25_ptr = NULL;

	if (FUNC0(&nr_bridges))
		openvswitch_handle_frame_hook = NULL;

	FUNC2(netdev_vport->dev, -1);
	FUNC5();

	FUNC1(&netdev_vport->rcu, free_port_rcu);
}