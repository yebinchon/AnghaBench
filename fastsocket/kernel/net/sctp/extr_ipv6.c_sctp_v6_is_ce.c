
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __u32 ;


 int htonl (int) ;
 scalar_t__ ipv6_hdr (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v6_is_ce(const struct sk_buff *skb)
{
 return *((__u32 *)(ipv6_hdr(skb))) & htonl(1 << 20);
}
