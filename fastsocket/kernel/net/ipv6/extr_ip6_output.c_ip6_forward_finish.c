
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dst_output (struct sk_buff*) ;

__attribute__((used)) static inline int ip6_forward_finish(struct sk_buff *skb)
{
 return dst_output(skb);
}
