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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  NETDEV_CHANGENAME 130 
#define  NETDEV_REGISTER 129 
#define  NETDEV_UNREGISTER 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, unsigned long event)
{
	switch (event) {
	case NETDEV_CHANGENAME:
		FUNC2(dev);
		if (FUNC1(dev) < 0)
			FUNC0("8021q: failed to change proc name for %s\n",
					dev->name);
		break;
	case NETDEV_REGISTER:
		if (FUNC1(dev) < 0)
			FUNC0("8021q: failed to add proc entry for %s\n",
					dev->name);
		break;
	case NETDEV_UNREGISTER:
		FUNC2(dev);
		break;
	}
}