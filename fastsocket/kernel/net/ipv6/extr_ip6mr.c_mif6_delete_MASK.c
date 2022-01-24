#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int maxvif; int mroute_reg_vif_num; struct mif_device* vif6_table; } ;
struct net {TYPE_1__ ipv6; } ;
struct mif_device {int flags; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mc_forwarding; } ;
struct inet6_dev {TYPE_2__ cnf; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int MIFF_REGISTER ; 
 scalar_t__ FUNC0 (struct net*,int) ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  mrt_lock ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net *net, int vifi)
{
	struct mif_device *v;
	struct net_device *dev;
	struct inet6_dev *in6_dev;
	if (vifi < 0 || vifi >= net->ipv6.maxvif)
		return -EADDRNOTAVAIL;

	v = &net->ipv6.vif6_table[vifi];

	FUNC5(&mrt_lock);
	dev = v->dev;
	v->dev = NULL;

	if (!dev) {
		FUNC6(&mrt_lock);
		return -EADDRNOTAVAIL;
	}

#ifdef CONFIG_IPV6_PIMSM_V2
	if (vifi == net->ipv6.mroute_reg_vif_num)
		net->ipv6.mroute_reg_vif_num = -1;
#endif

	if (vifi + 1 == net->ipv6.maxvif) {
		int tmp;
		for (tmp = vifi - 1; tmp >= 0; tmp--) {
			if (FUNC0(net, tmp))
				break;
		}
		net->ipv6.maxvif = tmp + 1;
	}

	FUNC6(&mrt_lock);

	FUNC3(dev, -1);

	in6_dev = FUNC1(dev);
	if (in6_dev)
		in6_dev->cnf.mc_forwarding--;

	if (v->flags & MIFF_REGISTER)
		FUNC4(dev);

	FUNC2(dev);
	return 0;
}