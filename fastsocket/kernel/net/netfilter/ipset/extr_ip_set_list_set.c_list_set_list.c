
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct set_telem {int timeout; } ;
struct set_elem {scalar_t__ id; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;
struct list_set {scalar_t__ size; int timeout; } ;
struct ip_set {struct list_set* data; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_ADT ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_NAME ;
 int IPSET_ATTR_TIMEOUT ;
 scalar_t__ IPSET_INVALID_ID ;
 int NLA_PUT_NET32 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int htonl (int ) ;
 int ip_set_name_byindex (scalar_t__) ;
 int ip_set_timeout_get (int ) ;
 int ipset_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* ipset_nest_start (struct sk_buff*,int ) ;
 struct set_elem* list_set_elem (struct list_set const*,scalar_t__) ;
 scalar_t__ list_set_expired (struct list_set const*,scalar_t__) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static int
list_set_list(const struct ip_set *set,
       struct sk_buff *skb, struct netlink_callback *cb)
{
 const struct list_set *map = set->data;
 struct nlattr *atd, *nested;
 u32 i, first = cb->args[2];
 const struct set_elem *e;

 atd = ipset_nest_start(skb, IPSET_ATTR_ADT);
 if (!atd)
  return -EMSGSIZE;
 for (; cb->args[2] < map->size; cb->args[2]++) {
  i = cb->args[2];
  e = list_set_elem(map, i);
  if (e->id == IPSET_INVALID_ID)
   goto finish;
  if (with_timeout(map->timeout) && list_set_expired(map, i))
   continue;
  nested = ipset_nest_start(skb, IPSET_ATTR_DATA);
  if (!nested) {
   if (i == first) {
    nla_nest_cancel(skb, atd);
    return -EMSGSIZE;
   } else
    goto nla_put_failure;
  }
  NLA_PUT_STRING(skb, IPSET_ATTR_NAME,
          ip_set_name_byindex(e->id));
  if (with_timeout(map->timeout)) {
   const struct set_telem *te =
    (const struct set_telem *) e;
   NLA_PUT_NET32(skb, IPSET_ATTR_TIMEOUT,
          htonl(ip_set_timeout_get(te->timeout)));
  }
  ipset_nest_end(skb, nested);
 }
finish:
 ipset_nest_end(skb, atd);

 cb->args[2] = 0;
 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nested);
 ipset_nest_end(skb, atd);
 if (unlikely(i == first)) {
  cb->args[2] = 0;
  return -EMSGSIZE;
 }
 return 0;
}
