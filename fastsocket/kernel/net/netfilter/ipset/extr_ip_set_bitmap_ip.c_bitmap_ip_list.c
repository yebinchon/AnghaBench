
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; } ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {scalar_t__ elements; int hosts; scalar_t__ first_ip; int members; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_ADT ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_IP ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 int htonl (scalar_t__) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int test_bit (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
bitmap_ip_list(const struct ip_set *set,
        struct sk_buff *skb, struct netlink_callback *cb)
{
 const struct bitmap_ip *map = set->data;
 struct nlattr *atd, *nested;
 u32 id, first = cb->args[2];

 atd = ipset_nest_start(skb, IPSET_ATTR_ADT);
 if (!atd)
  return -EMSGSIZE;
 for (; cb->args[2] < map->elements; cb->args[2]++) {
  id = cb->args[2];
  if (!test_bit(id, map->members))
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
    htonl(map->first_ip + id * map->hosts));
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
