
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int pan_id; int short_addr; int addr_type; int hwaddr; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int (* disassoc_req ) (struct net_device*,struct ieee802154_addr*,int ) ;int (* get_pan_id ) (struct net_device*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int IEEE802154_ADDR_LEN ;
 int IEEE802154_ADDR_LONG ;
 int IEEE802154_ADDR_SHORT ;
 size_t IEEE802154_ATTR_DEST_HW_ADDR ;
 size_t IEEE802154_ATTR_DEST_SHORT_ADDR ;
 size_t IEEE802154_ATTR_REASON ;
 int dev_put (struct net_device*) ;
 TYPE_1__* ieee802154_mlme_ops (struct net_device*) ;
 struct net_device* ieee802154_nl_get_dev (struct genl_info*) ;
 int nla_get_u16 (scalar_t__) ;
 int nla_get_u8 (scalar_t__) ;
 int nla_memcpy (int ,scalar_t__,int ) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,struct ieee802154_addr*,int ) ;

__attribute__((used)) static int ieee802154_disassociate_req(struct sk_buff *skb,
  struct genl_info *info)
{
 struct net_device *dev;
 struct ieee802154_addr addr;
 int ret = -EINVAL;

 if ((!info->attrs[IEEE802154_ATTR_DEST_HW_ADDR] &&
  !info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR]) ||
     !info->attrs[IEEE802154_ATTR_REASON])
  return -EINVAL;

 dev = ieee802154_nl_get_dev(info);
 if (!dev)
  return -ENODEV;

 if (info->attrs[IEEE802154_ATTR_DEST_HW_ADDR]) {
  addr.addr_type = IEEE802154_ADDR_LONG;
  nla_memcpy(addr.hwaddr,
    info->attrs[IEEE802154_ATTR_DEST_HW_ADDR],
    IEEE802154_ADDR_LEN);
 } else {
  addr.addr_type = IEEE802154_ADDR_SHORT;
  addr.short_addr = nla_get_u16(
    info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR]);
 }
 addr.pan_id = ieee802154_mlme_ops(dev)->get_pan_id(dev);

 ret = ieee802154_mlme_ops(dev)->disassoc_req(dev, &addr,
   nla_get_u8(info->attrs[IEEE802154_ATTR_REASON]));

 dev_put(dev);
 return ret;
}
