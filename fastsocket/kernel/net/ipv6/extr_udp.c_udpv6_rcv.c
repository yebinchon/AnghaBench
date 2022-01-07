
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_UDP ;
 int __udp6_lib_rcv (struct sk_buff*,int *,int ) ;
 int udp_table ;

__attribute__((used)) static __inline__ int udpv6_rcv(struct sk_buff *skb)
{
 return __udp6_lib_rcv(skb, &udp_table, IPPROTO_UDP);
}
