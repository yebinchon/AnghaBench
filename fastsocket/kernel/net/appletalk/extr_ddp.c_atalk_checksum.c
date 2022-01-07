
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __be16 ;


 unsigned long atalk_sum_skb (struct sk_buff const*,int,int,int ) ;
 int htons (int) ;

__attribute__((used)) static __be16 atalk_checksum(const struct sk_buff *skb, int len)
{
 unsigned long sum;


 sum = atalk_sum_skb(skb, 4, len-4, 0);


 return sum ? htons((unsigned short)sum) : htons(0xFFFF);
}
