
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ in_irq () ;
 scalar_t__ irqs_disabled () ;

void dev_kfree_skb_any(struct sk_buff *skb)
{
 if (in_irq() || irqs_disabled())
  dev_kfree_skb_irq(skb);
 else
  dev_kfree_skb(skb);
}
