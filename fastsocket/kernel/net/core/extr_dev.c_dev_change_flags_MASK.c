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
struct net_device {int flags; unsigned int gflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int IFF_ALLMULTI ; 
 unsigned int IFF_AUTOMEDIA ; 
 unsigned int IFF_DEBUG ; 
 unsigned int IFF_DYNAMIC ; 
 unsigned int IFF_MULTICAST ; 
 unsigned int IFF_NOARP ; 
 unsigned int IFF_NOTRAILERS ; 
 unsigned int IFF_PORTSEL ; 
 unsigned int IFF_PROMISC ; 
 unsigned int IFF_RUNNING ; 
 unsigned int IFF_UP ; 
 unsigned int IFF_VOLATILE ; 
 int /*<<< orphan*/  NETDEV_CHANGE ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int) ; 
 int FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 int FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *dev, unsigned flags)
{
	int ret, changes;
	int old_flags = dev->flags;

	FUNC0();

	/*
	 *	Set the flags on our device.
	 */

	dev->flags = (flags & (IFF_DEBUG | IFF_NOTRAILERS | IFF_NOARP |
			       IFF_DYNAMIC | IFF_MULTICAST | IFF_PORTSEL |
			       IFF_AUTOMEDIA)) |
		     (dev->flags & (IFF_UP | IFF_VOLATILE | IFF_PROMISC |
				    IFF_ALLMULTI));

	/*
	 *	Load in the correct multicast list now the flags have changed.
	 */

	if ((old_flags ^ flags) & IFF_MULTICAST)
		FUNC2(dev, IFF_MULTICAST);

	FUNC7(dev);

	/*
	 *	Have we downed the interface. We handle IFF_UP ourselves
	 *	according to user attempts to set it, rather than blindly
	 *	setting it.
	 */

	ret = 0;
	if ((old_flags ^ flags) & IFF_UP) {	/* Bit is different  ? */
		ret = ((old_flags & IFF_UP) ? dev_close : dev_open)(dev);

		if (!ret)
			FUNC7(dev);
	}

	if (dev->flags & IFF_UP &&
	    ((old_flags ^ dev->flags) & ~(IFF_UP | IFF_PROMISC | IFF_ALLMULTI |
					  IFF_VOLATILE)))
		FUNC1(NETDEV_CHANGE, dev);

	if ((flags ^ dev->gflags) & IFF_PROMISC) {
		int inc = (flags & IFF_PROMISC) ? 1 : -1;

		dev->gflags ^= IFF_PROMISC;
		FUNC6(dev, inc);
	}

	/* NOTE: order of synchronization of IFF_PROMISC and IFF_ALLMULTI
	   is important. Some (broken) drivers set IFF_PROMISC, when
	   IFF_ALLMULTI is requested not asking us and not reporting.
	 */
	if ((flags ^ dev->gflags) & IFF_ALLMULTI) {
		int inc = (flags & IFF_ALLMULTI) ? 1 : -1;

		dev->gflags ^= IFF_ALLMULTI;
		FUNC5(dev, inc);
	}

	/* Exclude state transition flags, already notified */
	changes = (old_flags ^ dev->flags) & ~(IFF_UP | IFF_RUNNING);
	if (changes)
		FUNC8(RTM_NEWLINK, dev, changes);

	return ret;
}