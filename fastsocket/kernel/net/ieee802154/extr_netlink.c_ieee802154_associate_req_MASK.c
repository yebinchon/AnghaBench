#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {void* pan_id; void* short_addr; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  hwaddr; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int (* assoc_req ) (struct net_device*,struct ieee802154_addr*,scalar_t__,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LONG ; 
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT ; 
 size_t IEEE802154_ATTR_CAPABILITY ; 
 size_t IEEE802154_ATTR_CHANNEL ; 
 size_t IEEE802154_ATTR_COORD_HW_ADDR ; 
 size_t IEEE802154_ATTR_COORD_PAN_ID ; 
 size_t IEEE802154_ATTR_COORD_SHORT_ADDR ; 
 size_t IEEE802154_ATTR_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,struct ieee802154_addr*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
		struct genl_info *info)
{
	struct net_device *dev;
	struct ieee802154_addr addr;
	u8 page;
	int ret = -EINVAL;

	if (!info->attrs[IEEE802154_ATTR_CHANNEL] ||
	    !info->attrs[IEEE802154_ATTR_COORD_PAN_ID] ||
	    (!info->attrs[IEEE802154_ATTR_COORD_HW_ADDR] &&
		!info->attrs[IEEE802154_ATTR_COORD_SHORT_ADDR]) ||
	    !info->attrs[IEEE802154_ATTR_CAPABILITY])
		return -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;

	if (info->attrs[IEEE802154_ATTR_COORD_HW_ADDR]) {
		addr.addr_type = IEEE802154_ADDR_LONG;
		FUNC5(addr.hwaddr,
				info->attrs[IEEE802154_ATTR_COORD_HW_ADDR],
				IEEE802154_ADDR_LEN);
	} else {
		addr.addr_type = IEEE802154_ADDR_SHORT;
		addr.short_addr = FUNC3(
				info->attrs[IEEE802154_ATTR_COORD_SHORT_ADDR]);
	}
	addr.pan_id = FUNC3(info->attrs[IEEE802154_ATTR_COORD_PAN_ID]);

	if (info->attrs[IEEE802154_ATTR_PAGE])
		page = FUNC4(info->attrs[IEEE802154_ATTR_PAGE]);
	else
		page = 0;

	ret = FUNC1(dev)->assoc_req(dev, &addr,
			FUNC4(info->attrs[IEEE802154_ATTR_CHANNEL]),
			page,
			FUNC4(info->attrs[IEEE802154_ATTR_CAPABILITY]));

	FUNC0(dev);
	return ret;
}