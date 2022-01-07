
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {scalar_t__ last_port; scalar_t__ first_port; unsigned long* members; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_ADT ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_TIMEOUT ;
 int NLA_PUT_NET16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int htonl (int ) ;
 int htons (scalar_t__) ;
 int ip_set_timeout_get (unsigned long const) ;
 int ip_set_timeout_test (unsigned long const) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
bitmap_port_tlist(const struct ip_set *set,
    struct sk_buff *skb, struct netlink_callback *cb)
{
 const struct bitmap_port *map = set->data;
 struct nlattr *adt, *nested;
 u16 id, first = cb->args[2];
 u16 last = map->last_port - map->first_port;
 const unsigned long *members = map->members;

 adt = ipset_nest_start(skb, IPSET_ATTR_ADT);
 if (!adt)
  return -EMSGSIZE;
 for (; cb->args[2] <= last; cb->args[2]++) {
  id = cb->args[2];
  if (!ip_set_timeout_test(members[id]))
   continue;
  nested = ipset_nest_start(skb, IPSET_ATTR_DATA);
  if (!nested) {
   if (id == first) {
    nla_nest_cancel(skb, adt);
    return -EMSGSIZE;
   } else
    goto nla_put_failure;
  }
  NLA_PUT_NET16(skb, IPSET_ATTR_PORT,
         htons(map->first_port + id));
  NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT,
         htonl(ip_set_timeout_get(members[id])));
  ipset_nest_end(skb, nested);
 }
 ipset_nest_end(skb, adt);


 cb->args[2] = 0;

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nested);
 ipset_nest_end(skb, adt);
 if (unlikely(id == first)) {
  cb->args[2] = 0;
  return -EMSGSIZE;
 }
 return 0;
}
