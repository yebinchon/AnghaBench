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
struct net {int dummy; } ;
struct ipip_net {int /*<<< orphan*/  fb_tunnel_dev; int /*<<< orphan*/  tunnels_r_l; int /*<<< orphan*/ * tunnels; int /*<<< orphan*/  tunnels_r; int /*<<< orphan*/  tunnels_l; int /*<<< orphan*/  tunnels_wc; } ;
struct ip_tunnel {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipip_net_id ; 
 int /*<<< orphan*/  ipip_tunnel_setup ; 
 int /*<<< orphan*/  FUNC4 (struct ipip_net*) ; 
 struct ipip_net* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,int /*<<< orphan*/ ,struct ipip_net*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net *net)
{
	int err;
	struct ipip_net *ipn;

	err = -ENOMEM;
	ipn = FUNC5(sizeof(struct ipip_net), GFP_KERNEL);
	if (ipn == NULL)
		goto err_alloc;

	err = FUNC6(net, ipip_net_id, ipn);
	if (err < 0)
		goto err_assign;

	ipn->tunnels[0] = ipn->tunnels_wc;
	ipn->tunnels[1] = ipn->tunnels_l;
	ipn->tunnels[2] = ipn->tunnels_r;
	ipn->tunnels[3] = ipn->tunnels_r_l;

	ipn->fb_tunnel_dev = FUNC0(sizeof(struct ip_tunnel),
					   "tunl0",
					   ipip_tunnel_setup);
	if (!ipn->fb_tunnel_dev) {
		err = -ENOMEM;
		goto err_alloc_dev;
	}
	FUNC1(ipn->fb_tunnel_dev, net);

	FUNC3(ipn->fb_tunnel_dev);

	if ((err = FUNC7(ipn->fb_tunnel_dev)))
		goto err_reg_dev;

	return 0;

err_reg_dev:
	FUNC2(ipn->fb_tunnel_dev);
err_alloc_dev:
	/* nothing */
err_assign:
	FUNC4(ipn);
err_alloc:
	return err;
}