#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vport_parms {int /*<<< orphan*/  name; } ;
struct vport {int /*<<< orphan*/  dp; } ;
struct netdev_vport {TYPE_1__* dev; } ;
struct TYPE_5__ {int flags; scalar_t__ type; int /*<<< orphan*/  priv_flags; struct vport* ax25_ptr; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 struct vport* FUNC0 (int) ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IFF_OVS_DATAPATH ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 struct netdev_vport* FUNC7 (struct vport*) ; 
 int /*<<< orphan*/  nr_bridges ; 
 int /*<<< orphan*/  openvswitch_handle_frame_hook ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  ovs_netdev_frame_hook ; 
 int /*<<< orphan*/  ovs_netdev_vport_ops ; 
 struct vport* FUNC10 (int,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC11 (struct vport*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static struct vport *FUNC14(const struct vport_parms *parms)
{
	struct vport *vport;
	struct netdev_vport *netdev_vport;
	int err;

	vport = FUNC10(sizeof(struct netdev_vport),
				&ovs_netdev_vport_ops, parms);
	if (FUNC1(vport)) {
		err = FUNC2(vport);
		goto error;
	}

	netdev_vport = FUNC7(vport);

	netdev_vport->dev = FUNC4(FUNC8(vport->dp), parms->name);
	if (!netdev_vport->dev) {
		err = -ENODEV;
		goto error_free_vport;
	}

	if (netdev_vport->dev->flags & IFF_LOOPBACK ||
	    netdev_vport->dev->type != ARPHRD_ETHER ||
	    FUNC9(netdev_vport->dev)) {
		err = -EINVAL;
		goto error_put;
	}

	err = -EBUSY;
	FUNC12();
	if (netdev_vport->dev->ax25_ptr)
		goto error_unlock;

	netdev_vport->dev->ax25_ptr = vport;

	FUNC3(&nr_bridges);
	openvswitch_handle_frame_hook = ovs_netdev_frame_hook;

	FUNC6(netdev_vport->dev, 1);
	netdev_vport->dev->priv_flags |= IFF_OVS_DATAPATH;
	FUNC13();

	return vport;

error_unlock:
	FUNC13();
error_put:
	FUNC5(netdev_vport->dev);
error_free_vport:
	FUNC11(vport);
error:
	return FUNC0(err);
}