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
struct net_device {int priv_flags; int flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int EPERM ; 
 int IFF_EBRIDGE ; 
 int IFF_UP ; 
 struct net_device* FUNC0 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct net *net, const char *name)
{
	struct net_device *dev;
	int ret = 0;

	FUNC3();
	dev = FUNC0(net, name);
	if (dev == NULL)
		ret =  -ENXIO; 	/* Could not find device */

	else if (!(dev->priv_flags & IFF_EBRIDGE)) {
		/* Attempt to delete non bridge device! */
		ret = -EPERM;
	}

	else if (dev->flags & IFF_UP) {
		/* Not shutdown yet. */
		ret = -EBUSY;
	}

	else
		FUNC1(FUNC2(dev));

	FUNC4();
	return ret;
}