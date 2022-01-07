
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;


 int ipv6_skip_exthdr_fragoff (struct sk_buff const*,int,int *,int *) ;

int ipv6_skip_exthdr(const struct sk_buff *skb, int start, u8 *nexthdrp)
{
 __be16 fragoff;

 return ipv6_skip_exthdr_fragoff(skb, start, nexthdrp, &fragoff);
}
