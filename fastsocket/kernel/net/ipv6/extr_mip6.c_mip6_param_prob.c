
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; } ;


 int ICMPV6_PARAMPROB ;
 int icmpv6_send (struct sk_buff*,int ,int ,int,int ) ;

__attribute__((used)) static inline void mip6_param_prob(struct sk_buff *skb, u8 code, int pos)
{
 icmpv6_send(skb, ICMPV6_PARAMPROB, code, pos, skb->dev);
}
