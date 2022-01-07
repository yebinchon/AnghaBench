
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct set_elem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; int timeout; } ;
struct ip_set {struct list_set* data; } ;
typedef enum ipset_adt { ____Placeholder_ipset_adt } ipset_adt ;


 int EINVAL ;


 scalar_t__ IPSET_INVALID_ID ;

 int ip_set_add (scalar_t__,struct sk_buff const*,int ,int ,int ) ;
 int ip_set_del (scalar_t__,struct sk_buff const*,int ,int ,int ) ;
 int ip_set_test (scalar_t__,struct sk_buff const*,int ,int ,int ) ;
 struct set_elem* list_set_elem (struct list_set*,scalar_t__) ;
 scalar_t__ list_set_expired (struct list_set*,scalar_t__) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static int
list_set_kadt(struct ip_set *set, const struct sk_buff *skb,
       enum ipset_adt adt, u8 pf, u8 dim, u8 flags)
{
 struct list_set *map = set->data;
 struct set_elem *elem;
 u32 i;
 int ret;

 for (i = 0; i < map->size; i++) {
  elem = list_set_elem(map, i);
  if (elem->id == IPSET_INVALID_ID)
   return 0;
  if (with_timeout(map->timeout) && list_set_expired(map, i))
   continue;
  switch (adt) {
  case 128:
   ret = ip_set_test(elem->id, skb, pf, dim, flags);
   if (ret > 0)
    return ret;
   break;
  case 130:
   ret = ip_set_add(elem->id, skb, pf, dim, flags);
   if (ret == 0)
    return ret;
   break;
  case 129:
   ret = ip_set_del(elem->id, skb, pf, dim, flags);
   if (ret == 0)
    return ret;
   break;
  default:
   break;
  }
 }
 return -EINVAL;
}
