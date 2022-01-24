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
typedef  void* u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {scalar_t__ short_addr; void* pan_id; int /*<<< orphan*/  addr_type; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int (* start_req ) (struct net_device*,struct ieee802154_addr*,void*,void*,void*,void*,int,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ IEEE802154_ADDR_BROADCAST ; 
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT ; 
 size_t IEEE802154_ATTR_BAT_EXT ; 
 size_t IEEE802154_ATTR_BCN_ORD ; 
 size_t IEEE802154_ATTR_CHANNEL ; 
 size_t IEEE802154_ATTR_COORD_PAN_ID ; 
 size_t IEEE802154_ATTR_COORD_REALIGN ; 
 size_t IEEE802154_ATTR_COORD_SHORT_ADDR ; 
 size_t IEEE802154_ATTR_PAGE ; 
 size_t IEEE802154_ATTR_PAN_COORD ; 
 size_t IEEE802154_ATTR_SF_ORD ; 
 int /*<<< orphan*/  IEEE802154_NO_SHORT_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (struct net_device*,struct ieee802154_addr*,void*,void*,void*,void*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device *dev;
	struct ieee802154_addr addr;

	u8 channel, bcn_ord, sf_ord;
	u8 page;
	int pan_coord, blx, coord_realign;
	int ret;

	if (!info->attrs[IEEE802154_ATTR_COORD_PAN_ID] ||
	    !info->attrs[IEEE802154_ATTR_COORD_SHORT_ADDR] ||
	    !info->attrs[IEEE802154_ATTR_CHANNEL] ||
	    !info->attrs[IEEE802154_ATTR_BCN_ORD] ||
	    !info->attrs[IEEE802154_ATTR_SF_ORD] ||
	    !info->attrs[IEEE802154_ATTR_PAN_COORD] ||
	    !info->attrs[IEEE802154_ATTR_BAT_EXT] ||
	    !info->attrs[IEEE802154_ATTR_COORD_REALIGN]
	 )
		return -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;

	addr.addr_type = IEEE802154_ADDR_SHORT;
	addr.short_addr = FUNC4(
			info->attrs[IEEE802154_ATTR_COORD_SHORT_ADDR]);
	addr.pan_id = FUNC4(info->attrs[IEEE802154_ATTR_COORD_PAN_ID]);

	channel = FUNC5(info->attrs[IEEE802154_ATTR_CHANNEL]);
	bcn_ord = FUNC5(info->attrs[IEEE802154_ATTR_BCN_ORD]);
	sf_ord = FUNC5(info->attrs[IEEE802154_ATTR_SF_ORD]);
	pan_coord = FUNC5(info->attrs[IEEE802154_ATTR_PAN_COORD]);
	blx = FUNC5(info->attrs[IEEE802154_ATTR_BAT_EXT]);
	coord_realign = FUNC5(info->attrs[IEEE802154_ATTR_COORD_REALIGN]);

	if (info->attrs[IEEE802154_ATTR_PAGE])
		page = FUNC5(info->attrs[IEEE802154_ATTR_PAGE]);
	else
		page = 0;


	if (addr.short_addr == IEEE802154_ADDR_BROADCAST) {
		FUNC3(dev, IEEE802154_NO_SHORT_ADDRESS);
		FUNC0(dev);
		return -EINVAL;
	}

	ret = FUNC1(dev)->start_req(dev, &addr, channel, page,
		bcn_ord, sf_ord, pan_coord, blx, coord_realign);

	FUNC0(dev);
	return ret;
}