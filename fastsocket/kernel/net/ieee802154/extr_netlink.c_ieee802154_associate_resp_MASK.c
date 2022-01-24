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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int /*<<< orphan*/  pan_id; int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  addr_type; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct TYPE_2__ {int (* assoc_resp ) (struct net_device*,struct ieee802154_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_pan_id ) (struct net_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LONG ; 
 size_t IEEE802154_ATTR_DEST_HW_ADDR ; 
 size_t IEEE802154_ATTR_DEST_SHORT_ADDR ; 
 size_t IEEE802154_ATTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct ieee802154_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
		struct genl_info *info)
{
	struct net_device *dev;
	struct ieee802154_addr addr;
	int ret = -EINVAL;

	if (!info->attrs[IEEE802154_ATTR_STATUS] ||
	    !info->attrs[IEEE802154_ATTR_DEST_HW_ADDR] ||
	    !info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR])
		return -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;

	addr.addr_type = IEEE802154_ADDR_LONG;
	FUNC5(addr.hwaddr, info->attrs[IEEE802154_ATTR_DEST_HW_ADDR],
			IEEE802154_ADDR_LEN);
	addr.pan_id = FUNC1(dev)->get_pan_id(dev);


	ret = FUNC1(dev)->assoc_resp(dev, &addr,
		FUNC3(info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR]),
		FUNC4(info->attrs[IEEE802154_ATTR_STATUS]));

	FUNC0(dev);
	return ret;
}