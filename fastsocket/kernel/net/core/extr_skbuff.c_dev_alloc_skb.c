
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* __dev_alloc_skb (unsigned int,int ) ;

struct sk_buff *dev_alloc_skb(unsigned int length)
{




 return __dev_alloc_skb(length, GFP_ATOMIC);
}
