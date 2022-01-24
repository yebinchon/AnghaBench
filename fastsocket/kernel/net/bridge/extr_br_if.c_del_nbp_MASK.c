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
struct net_device {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  br_port; int /*<<< orphan*/  name; } ;
struct net_bridge_port {int /*<<< orphan*/  rcu; int /*<<< orphan*/  kobj; int /*<<< orphan*/  list; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; int /*<<< orphan*/  ifobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_BRIDGE_PORT ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  RTM_DELLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy_nbp_rcu ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct net_bridge_port *p)
{
	struct net_bridge *br = p->br;
	struct net_device *dev = p->dev;

	FUNC14(br->ifobj, dev->name);

	FUNC7(dev, -1);

	FUNC0(br, p);

	FUNC12(&br->lock);
	FUNC5(p);
	FUNC13(&br->lock);

	FUNC2(RTM_DELLINK, p);

	FUNC1(br, p, 1);

	FUNC10(&p->list);

	FUNC11(dev->br_port, NULL);

	dev->priv_flags &= ~IFF_BRIDGE_PORT;

	FUNC3(p);

	FUNC9(&p->kobj, KOBJ_REMOVE);
	FUNC8(&p->kobj);

	FUNC4(p);

	FUNC6(&p->rcu, destroy_nbp_rcu);
}