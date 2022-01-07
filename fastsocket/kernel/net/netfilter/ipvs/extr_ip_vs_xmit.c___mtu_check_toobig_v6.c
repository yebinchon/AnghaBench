
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ frag_max_size; } ;


 TYPE_1__* IP6CB (struct sk_buff const*) ;
 int skb_is_gso (struct sk_buff const*) ;

__attribute__((used)) static inline bool
__mtu_check_toobig_v6(const struct sk_buff *skb, u32 mtu)
{
 if (IP6CB(skb)->frag_max_size) {



  if (IP6CB(skb)->frag_max_size > mtu)
   return 1;
 }
 else if (skb->len > mtu && !skb_is_gso(skb)) {
  return 1;
 }
 return 0;
}
