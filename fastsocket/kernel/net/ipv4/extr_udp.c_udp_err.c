
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int __udp4_lib_err (struct sk_buff*,int ,int *) ;
 int udp_table ;

void udp_err(struct sk_buff *skb, u32 info)
{
 __udp4_lib_err(skb, info, &udp_table);
}
