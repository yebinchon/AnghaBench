#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * br_port; int /*<<< orphan*/  dev_addr; TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct net_bridge_port {int /*<<< orphan*/  kobj; TYPE_3__* dev; int /*<<< orphan*/  list; } ;
struct net_bridge {int /*<<< orphan*/  ifobj; TYPE_5__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_list; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int ext_priv_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ ndo_start_xmit; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ELOOP ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  IFF_BRIDGE_PORT ; 
 int IFF_DONT_BRIDGE ; 
 int IFF_LOOPBACK ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  NETDEV_JOIN ; 
 int FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  SYSFS_BRIDGE_PORT_ATTR ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*) ; 
 scalar_t__ br_dev_xmit ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct net_bridge_port*,int) ; 
 int FUNC4 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge*) ; 
 int FUNC8 (struct net_bridge_port*) ; 
 scalar_t__ FUNC9 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_bridge*) ; 
 int FUNC12 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  brport_ktype ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct net_bridge_port*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC23 (struct net_device*) ; 
 scalar_t__ FUNC24 (struct net_device*) ; 
 struct net_bridge_port* FUNC25 (struct net_bridge*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC30(struct net_bridge *br, struct net_device *dev)
{
	struct net_bridge_port *p;
	int err = 0;

	/* Don't allow bridging non-ethernet like devices */
	if ((dev->flags & IFF_LOOPBACK) ||
	    dev->type != ARPHRD_ETHER || dev->addr_len != ETH_ALEN)
		return -EINVAL;

	/* No bridging of bridges */
	if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit)
		return -ELOOP;

	/* Device is already being bridged */
	if (dev->br_port != NULL)
		return -EBUSY;

	/* No bridging devices that dislike that (e.g. wireless) */
	if (FUNC23(dev)->ext_priv_flags & IFF_DONT_BRIDGE)
		return -EOPNOTSUPP;

	p = FUNC25(br, dev);
	if (FUNC0(p))
		return FUNC1(p);

	err = FUNC17(dev, 1);
	if (err)
		goto put_back;

	FUNC13(NETDEV_JOIN, dev);

	err = FUNC19(&p->kobj, &brport_ktype, &(dev->dev.kobj),
				   SYSFS_BRIDGE_PORT_ATTR);
	if (err)
		goto err0;

	err = FUNC4(br, p, dev->dev_addr);
	if (err)
		goto err1;

	err = FUNC12(p);
	if (err)
		goto err2;

	if (FUNC9(br) && ((err = FUNC8(p))))
		goto err3;

	FUNC26(dev->br_port, p);

	FUNC14(dev);

	dev->priv_flags |= IFF_BRIDGE_PORT;

	FUNC22(&p->list, &br->port_list);

	FUNC2(br, p);

	FUNC5(br);

	FUNC27(&br->lock);
	FUNC11(br);

	if ((dev->flags & IFF_UP) && FUNC24(dev) &&
	    (br->dev->flags & IFF_UP))
		FUNC10(p);
	FUNC28(&br->lock);

	FUNC6(RTM_NEWLINK, p);

	FUNC16(br->dev, FUNC7(br));

	FUNC21(&p->kobj, KOBJ_ADD);

	return 0;
err3:
	FUNC29(br->ifobj, p->dev->name);
err2:
	FUNC3(br, p, 1);
err1:
	FUNC20(&p->kobj);
	p = NULL; /* kobject_put frees */
err0:
	FUNC17(dev, -1);
put_back:
	FUNC15(dev);
	FUNC18(p);
	return err;
}