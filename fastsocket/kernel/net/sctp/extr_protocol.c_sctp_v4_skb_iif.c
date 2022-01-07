
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rt_iif; } ;


 TYPE_1__* skb_rtable (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v4_skb_iif(const struct sk_buff *skb)
{
 return skb_rtable(skb)->rt_iif;
}
