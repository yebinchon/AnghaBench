
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct ipmac_elem {scalar_t__ match; int ether; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {scalar_t__ last_ip; scalar_t__ first_ip; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;
 int IPSET_ATTR_ADT ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_ETHER ;
 int IPSET_ATTR_IP ;
 scalar_t__ MAC_EMPTY ;
 scalar_t__ MAC_FILLED ;
 int NLA_PUT (struct sk_buff*,int ,int ,int ) ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 struct ipmac_elem* bitmap_ipmac_elem (struct bitmap_ipmac const*,scalar_t__) ;
 int htonl (scalar_t__) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
bitmap_ipmac_list(const struct ip_set *set,
    struct sk_buff *skb, struct netlink_callback *cb)
{
 const struct bitmap_ipmac *map = set->data;
 const struct ipmac_elem *elem;
 struct nlattr *atd, *nested;
 u32 id, first = cb->args[2];
 u32 last = map->last_ip - map->first_ip;

 atd = ipset_nest_start(skb, IPSET_ATTR_ADT);
 if (!atd)
  return -EMSGSIZE;
 for (; cb->args[2] <= last; cb->args[2]++) {
  id = cb->args[2];
  elem = bitmap_ipmac_elem(map, id);
  if (elem->match == MAC_EMPTY)
   continue;
  nested = ipset_nest_start(skb, IPSET_ATTR_DATA);
  if (!nested) {
   if (id == first) {
    nla_nest_cancel(skb, atd);
    return -EMSGSIZE;
   } else
    goto nla_put_failure;
  }
  NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP,
    htonl(map->first_ip + id));
  if (elem->match == MAC_FILLED)
   NLA_PUT(skb, IPSET_ATTR_ETHER, ETH_ALEN,
    elem->ether);
  ipset_nest_end(skb, nested);
 }
 ipset_nest_end(skb, atd);

 cb->args[2] = 0;

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nested);
 ipset_nest_end(skb, atd);
 if (unlikely(id == first)) {
  cb->args[2] = 0;
  return -EMSGSIZE;
 }
 return 0;
}
