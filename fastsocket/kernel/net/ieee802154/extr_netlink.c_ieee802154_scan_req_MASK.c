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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int (* scan_req ) (struct net_device*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IEEE802154_ATTR_CHANNELS ; 
 size_t IEEE802154_ATTR_DURATION ; 
 size_t IEEE802154_ATTR_PAGE ; 
 size_t IEEE802154_ATTR_SCAN_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct net_device*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device *dev;
	int ret;
	u8 type;
	u32 channels;
	u8 duration;
	u8 page;

	if (!info->attrs[IEEE802154_ATTR_SCAN_TYPE] ||
	    !info->attrs[IEEE802154_ATTR_CHANNELS] ||
	    !info->attrs[IEEE802154_ATTR_DURATION])
		return -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;

	type = FUNC4(info->attrs[IEEE802154_ATTR_SCAN_TYPE]);
	channels = FUNC3(info->attrs[IEEE802154_ATTR_CHANNELS]);
	duration = FUNC4(info->attrs[IEEE802154_ATTR_DURATION]);

	if (info->attrs[IEEE802154_ATTR_PAGE])
		page = FUNC4(info->attrs[IEEE802154_ATTR_PAGE]);
	else
		page = 0;


	ret = FUNC1(dev)->scan_req(dev, type, channels, page,
			duration);

	FUNC0(dev);
	return ret;
}