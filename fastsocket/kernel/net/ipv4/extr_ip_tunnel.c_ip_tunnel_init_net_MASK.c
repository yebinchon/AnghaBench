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
struct rtnl_link_ops {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int /*<<< orphan*/  name; } ;
struct ip_tunnel_net {int /*<<< orphan*/ * fb_tunnel_dev; int /*<<< orphan*/  tunnels; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  parms ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int IP_TNL_HASH_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct net*,struct rtnl_link_ops*,struct ip_tunnel_parm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_tunnel_parm*,int /*<<< orphan*/ ,int) ; 
 struct ip_tunnel_net* FUNC6 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct net *net, int ip_tnl_net_id,
				  struct rtnl_link_ops *ops, char *devname)
{
	struct ip_tunnel_net *itn = FUNC6(net, ip_tnl_net_id);
	struct ip_tunnel_parm parms;

	itn->tunnels = FUNC4(IP_TNL_HASH_SIZE * sizeof(struct hlist_head), GFP_KERNEL);
	if (!itn->tunnels)
		return -ENOMEM;

	if (!ops) {
		itn->fb_tunnel_dev = NULL;
		return 0;
	}
	FUNC5(&parms, 0, sizeof(parms));
	if (devname)
		FUNC9(parms.name, devname, IFNAMSIZ);

	FUNC7();
	itn->fb_tunnel_dev = FUNC2(net, ops, &parms);
	FUNC8();
	if (FUNC0(itn->fb_tunnel_dev)) {
		FUNC3(itn->tunnels);
		return FUNC1(itn->fb_tunnel_dev);
	}

	return 0;
}