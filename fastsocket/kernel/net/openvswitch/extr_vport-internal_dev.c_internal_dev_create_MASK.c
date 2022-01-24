#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vport_parms {int /*<<< orphan*/  name; } ;
struct vport {scalar_t__ port_no; int /*<<< orphan*/  dp; } ;
struct netdev_vport {TYPE_1__* dev; } ;
struct internal_dev {struct vport* vport; } ;
struct TYPE_8__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vport* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 int /*<<< orphan*/  NETIF_F_NETNS_LOCAL ; 
 scalar_t__ OVSP_LOCAL ; 
 int FUNC2 (struct vport*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  do_setup ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct internal_dev* FUNC7 (TYPE_1__*) ; 
 struct netdev_vport* FUNC8 (struct vport*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_internal_vport_ops ; 
 struct vport* FUNC11 (int,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC12 (struct vport*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static struct vport *FUNC16(const struct vport_parms *parms)
{
	struct vport *vport;
	struct netdev_vport *netdev_vport;
	struct internal_dev *internal_dev;
	int err;

	vport = FUNC11(sizeof(struct netdev_vport),
				&ovs_internal_vport_ops, parms);
	if (FUNC1(vport)) {
		err = FUNC2(vport);
		goto error;
	}

	netdev_vport = FUNC8(vport);

	netdev_vport->dev = FUNC3(sizeof(struct internal_dev),
					 parms->name, do_setup);
	if (!netdev_vport->dev) {
		err = -ENOMEM;
		goto error_free_vport;
	}

	FUNC4(netdev_vport->dev, FUNC10(vport->dp));
	internal_dev = FUNC7(netdev_vport->dev);
	internal_dev->vport = vport;

	/* Restrict bridge port to current netns. */
	if (vport->port_no == OVSP_LOCAL)
		netdev_vport->dev->features |= NETIF_F_NETNS_LOCAL;

	FUNC14();
	err = FUNC13(netdev_vport->dev);
	if (err)
		goto error_free_netdev;

	FUNC5(netdev_vport->dev, 1);
	FUNC15();
	FUNC9(netdev_vport->dev);

	return vport;

error_free_netdev:
	FUNC15();
	FUNC6(netdev_vport->dev);
error_free_vport:
	FUNC12(vport);
error:
	return FUNC0(err);
}