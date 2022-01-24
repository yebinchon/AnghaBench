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
struct ip6_tnl_net {int /*<<< orphan*/  fb_tnl_dev; int /*<<< orphan*/  tnls_r_l; int /*<<< orphan*/ * tnls; int /*<<< orphan*/  tnls_wc; } ;
struct ip6_tnl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip6_tnl_dev_setup ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct ip6_tnl_net*) ; 
 struct ip6_tnl_net* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,int /*<<< orphan*/ ,struct ip6_tnl_net*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net *net)
{
	int err;
	struct ip6_tnl_net *ip6n;

	err = -ENOMEM;
	ip6n = FUNC5(sizeof(struct ip6_tnl_net), GFP_KERNEL);
	if (ip6n == NULL)
		goto err_alloc;

	err = FUNC6(net, ip6_tnl_net_id, ip6n);
	if (err < 0)
		goto err_assign;

	ip6n->tnls[0] = ip6n->tnls_wc;
	ip6n->tnls[1] = ip6n->tnls_r_l;

	err = -ENOMEM;
	ip6n->fb_tnl_dev = FUNC0(sizeof(struct ip6_tnl), "ip6tnl0",
				      ip6_tnl_dev_setup);

	if (!ip6n->fb_tnl_dev)
		goto err_alloc_dev;
	FUNC1(ip6n->fb_tnl_dev, net);

	FUNC3(ip6n->fb_tnl_dev);

	err = FUNC7(ip6n->fb_tnl_dev);
	if (err < 0)
		goto err_register;
	return 0;

err_register:
	FUNC2(ip6n->fb_tnl_dev);
err_alloc_dev:
	/* nothing */
err_assign:
	FUNC4(ip6n);
err_alloc:
	return err;
}