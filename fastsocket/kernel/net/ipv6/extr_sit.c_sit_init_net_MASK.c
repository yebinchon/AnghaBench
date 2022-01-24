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
struct sit_net {int /*<<< orphan*/  fb_tunnel_dev; int /*<<< orphan*/  tunnels_r_l; int /*<<< orphan*/ * tunnels; int /*<<< orphan*/  tunnels_r; int /*<<< orphan*/  tunnels_l; int /*<<< orphan*/  tunnels_wc; } ;
struct net {int dummy; } ;
struct ip_tunnel {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipip6_tunnel_setup ; 
 int /*<<< orphan*/  FUNC5 (struct sit_net*) ; 
 struct sit_net* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net*,int /*<<< orphan*/ ,struct sit_net*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sit_net_id ; 

__attribute__((used)) static int FUNC9(struct net *net)
{
	int err;
	struct sit_net *sitn;

	err = -ENOMEM;
	sitn = FUNC6(sizeof(struct sit_net), GFP_KERNEL);
	if (sitn == NULL)
		goto err_alloc;

	err = FUNC7(net, sit_net_id, sitn);
	if (err < 0)
		goto err_assign;

	sitn->tunnels[0] = sitn->tunnels_wc;
	sitn->tunnels[1] = sitn->tunnels_l;
	sitn->tunnels[2] = sitn->tunnels_r;
	sitn->tunnels[3] = sitn->tunnels_r_l;

	sitn->fb_tunnel_dev = FUNC0(sizeof(struct ip_tunnel), "sit0",
					   ipip6_tunnel_setup);
	if (!sitn->fb_tunnel_dev) {
		err = -ENOMEM;
		goto err_alloc_dev;
	}
	FUNC1(sitn->fb_tunnel_dev, net);

	FUNC4(sitn->fb_tunnel_dev);

	if ((err = FUNC8(sitn->fb_tunnel_dev)))
		goto err_reg_dev;

	return 0;

err_reg_dev:
	FUNC2(sitn->fb_tunnel_dev);
	FUNC3(sitn->fb_tunnel_dev);
err_alloc_dev:
	/* nothing */
err_assign:
	FUNC5(sitn);
err_alloc:
	return err;
}