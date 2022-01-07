
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; int len; } ;
struct in6_addr {int dummy; } ;
typedef int __sum16 ;


 int IPPROTO_DCCP ;
 int csum_ipv6_magic (struct in6_addr*,struct in6_addr*,int ,int ,int ) ;

__attribute__((used)) static inline __sum16 dccp_v6_csum_finish(struct sk_buff *skb,
          struct in6_addr *saddr,
          struct in6_addr *daddr)
{
 return csum_ipv6_magic(saddr, daddr, skb->len, IPPROTO_DCCP, skb->csum);
}
