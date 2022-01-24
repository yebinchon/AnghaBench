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
struct net_device {int flags; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_X25 ; 
 int IFF_UP ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 

struct net_device *FUNC2(char *devname)
{
	struct net_device *dev = FUNC0(&init_net, devname);

	if (dev &&
	    (!(dev->flags & IFF_UP) || (dev->type != ARPHRD_X25
#if defined(CONFIG_LLC) || defined(CONFIG_LLC_MODULE)
					&& dev->type != ARPHRD_ETHER
#endif
					)))
		FUNC1(dev);

	return dev;
}