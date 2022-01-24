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
struct net_device {int mtu; } ;
struct eth_dev {int /*<<< orphan*/  lock; scalar_t__ port_usb; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERANGE ; 
 int ETH_FRAME_LEN ; 
 int ETH_HLEN ; 
 struct eth_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, int new_mtu)
{
	struct eth_dev	*dev = FUNC0(net);
	unsigned long	flags;
	int		status = 0;

	/* don't change MTU on "live" link (peer won't know) */
	FUNC1(&dev->lock, flags);
	if (dev->port_usb)
		status = -EBUSY;
	else if (new_mtu <= ETH_HLEN || new_mtu > ETH_FRAME_LEN)
		status = -ERANGE;
	else
		net->mtu = new_mtu;
	FUNC2(&dev->lock, flags);

	return status;
}