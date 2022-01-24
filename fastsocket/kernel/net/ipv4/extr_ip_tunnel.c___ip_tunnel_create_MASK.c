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
struct rtnl_link_ops {int /*<<< orphan*/  setup; int /*<<< orphan*/  priv_size; scalar_t__* kind; } ;
struct net_device {struct rtnl_link_ops const* rtnl_link_ops; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {scalar_t__* name; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int E2BIG ; 
 int ENOMEM ; 
 struct net_device* FUNC1 (int) ; 
 int IFNAMSIZ ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct ip_tunnel* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__*,int) ; 
 int FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static struct net_device *FUNC12(struct net *net,
					     const struct rtnl_link_ops *ops,
					     struct ip_tunnel_parm *parms)
{
	int err;
	struct ip_tunnel *tunnel;
	struct net_device *dev;
	char name[IFNAMSIZ];

	if (parms->name[0])
		FUNC9(name, parms->name, IFNAMSIZ);
	else {
		if (FUNC10(ops->kind) > (IFNAMSIZ - 3)) {
			err = -E2BIG;
			goto failed;
		}
		FUNC9(name, ops->kind, IFNAMSIZ);
		FUNC11(name, "%d", 2);
	}

	FUNC0();
	dev = FUNC2(ops->priv_size, name, ops->setup);
	if (!dev) {
		err = -ENOMEM;
		goto failed;
	}
	FUNC4(dev, net);

	if (FUNC8(name, '%')) {
		err = FUNC3(dev, name);
		if (err < 0)
			goto failed;
	}

	dev->rtnl_link_ops = ops;

	tunnel = FUNC6(dev);
	tunnel->parms = *parms;

	err = FUNC7(dev);
	if (err)
		goto failed_free;

	return dev;

failed_free:
	FUNC5(dev);
failed:
	return FUNC1(err);
}