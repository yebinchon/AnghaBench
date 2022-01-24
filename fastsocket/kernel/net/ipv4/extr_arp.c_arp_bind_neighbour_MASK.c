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
struct rtable {scalar_t__ rt_gateway; } ;
struct net_device {int flags; scalar_t__ type; } ;
struct neighbour {int dummy; } ;
struct dst_entry {struct neighbour* neighbour; struct net_device* dev; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ ARPHRD_ATM ; 
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 int IFF_POINTOPOINT ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int FUNC1 (struct neighbour*) ; 
 struct neighbour* FUNC2 (int /*<<< orphan*/ *,scalar_t__*,struct net_device*) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/ * clip_tbl_hook ; 

int FUNC3(struct dst_entry *dst)
{
	struct net_device *dev = dst->dev;
	struct neighbour *n = dst->neighbour;

	if (dev == NULL)
		return -EINVAL;
	if (n == NULL) {
		__be32 nexthop = ((struct rtable *)dst)->rt_gateway;
		if (dev->flags&(IFF_LOOPBACK|IFF_POINTOPOINT))
			nexthop = 0;
		n = FUNC2(
#if defined(CONFIG_ATM_CLIP) || defined(CONFIG_ATM_CLIP_MODULE)
		    dev->type == ARPHRD_ATM ? clip_tbl_hook :
#endif
		    &arp_tbl, &nexthop, dev);
		if (FUNC0(n))
			return FUNC1(n);
		dst->neighbour = n;
	}
	return 0;
}