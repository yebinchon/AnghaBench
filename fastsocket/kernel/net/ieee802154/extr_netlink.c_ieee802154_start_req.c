
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {scalar_t__ short_addr; void* pan_id; int addr_type; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int (* start_req ) (struct net_device*,struct ieee802154_addr*,void*,void*,void*,void*,int,int,int) ;} ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IEEE802154_ADDR_BROADCAST ;
 int IEEE802154_ADDR_SHORT ;
 size_t IEEE802154_ATTR_BAT_EXT ;
 size_t IEEE802154_ATTR_BCN_ORD ;
 size_t IEEE802154_ATTR_CHANNEL ;
 size_t IEEE802154_ATTR_COORD_PAN_ID ;
 size_t IEEE802154_ATTR_COORD_REALIGN ;
 size_t IEEE802154_ATTR_COORD_SHORT_ADDR ;
 size_t IEEE802154_ATTR_PAGE ;
 size_t IEEE802154_ATTR_PAN_COORD ;
 size_t IEEE802154_ATTR_SF_ORD ;
 int IEEE802154_NO_SHORT_ADDRESS ;
 int dev_put (struct net_device*) ;
 TYPE_1__* ieee802154_mlme_ops (struct net_device*) ;
 struct net_device* ieee802154_nl_get_dev (struct genl_info*) ;
 int ieee802154_nl_start_confirm (struct net_device*,int ) ;
 void* nla_get_u16 (scalar_t__) ;
 void* nla_get_u8 (scalar_t__) ;
 int stub1 (struct net_device*,struct ieee802154_addr*,void*,void*,void*,void*,int,int,int) ;

__attribute__((used)) static int ieee802154_start_req(struct sk_buff *skb, struct genl_info *info)
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

 dev = ieee802154_nl_get_dev(info);
 if (!dev)
  return -ENODEV;

 addr.addr_type = IEEE802154_ADDR_SHORT;
 addr.short_addr = nla_get_u16(
   info->attrs[IEEE802154_ATTR_COORD_SHORT_ADDR]);
 addr.pan_id = nla_get_u16(info->attrs[IEEE802154_ATTR_COORD_PAN_ID]);

 channel = nla_get_u8(info->attrs[IEEE802154_ATTR_CHANNEL]);
 bcn_ord = nla_get_u8(info->attrs[IEEE802154_ATTR_BCN_ORD]);
 sf_ord = nla_get_u8(info->attrs[IEEE802154_ATTR_SF_ORD]);
 pan_coord = nla_get_u8(info->attrs[IEEE802154_ATTR_PAN_COORD]);
 blx = nla_get_u8(info->attrs[IEEE802154_ATTR_BAT_EXT]);
 coord_realign = nla_get_u8(info->attrs[IEEE802154_ATTR_COORD_REALIGN]);

 if (info->attrs[IEEE802154_ATTR_PAGE])
  page = nla_get_u8(info->attrs[IEEE802154_ATTR_PAGE]);
 else
  page = 0;


 if (addr.short_addr == IEEE802154_ADDR_BROADCAST) {
  ieee802154_nl_start_confirm(dev, IEEE802154_NO_SHORT_ADDRESS);
  dev_put(dev);
  return -EINVAL;
 }

 ret = ieee802154_mlme_ops(dev)->start_req(dev, &addr, channel, page,
  bcn_ord, sf_ord, pan_coord, blx, coord_realign);

 dev_put(dev);
 return ret;
}
