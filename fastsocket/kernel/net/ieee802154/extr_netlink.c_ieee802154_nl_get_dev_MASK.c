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
struct net_device {scalar_t__ type; } ;
struct genl_info {scalar_t__* attrs; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 size_t IEEE802154_ATTR_DEV_INDEX ; 
 size_t IEEE802154_ATTR_DEV_NAME ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 

__attribute__((used)) static struct net_device *FUNC5(struct genl_info *info)
{
	struct net_device *dev;

	if (info->attrs[IEEE802154_ATTR_DEV_NAME]) {
		char name[IFNAMSIZ + 1];
		FUNC4(name, info->attrs[IEEE802154_ATTR_DEV_NAME],
				sizeof(name));
		dev = FUNC1(&init_net, name);
	} else if (info->attrs[IEEE802154_ATTR_DEV_INDEX])
		dev = FUNC0(&init_net,
			FUNC3(info->attrs[IEEE802154_ATTR_DEV_INDEX]));
	else
		return NULL;

	if (!dev)
		return NULL;

	if (dev->type != ARPHRD_IEEE802154) {
		FUNC2(dev);
		return NULL;
	}

	return dev;
}