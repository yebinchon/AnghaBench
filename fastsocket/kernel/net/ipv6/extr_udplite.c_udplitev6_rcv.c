
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_UDPLITE ;
 int __udp6_lib_rcv (struct sk_buff*,int *,int ) ;
 int udplite_table ;

__attribute__((used)) static int udplitev6_rcv(struct sk_buff *skb)
{
 return __udp6_lib_rcv(skb, &udplite_table, IPPROTO_UDPLITE);
}
