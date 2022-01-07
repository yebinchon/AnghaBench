
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct dev_gso_cb {int (* destructor ) (struct sk_buff*) ;} ;


 struct dev_gso_cb* DEV_GSO_CB (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static void dev_gso_skb_destructor(struct sk_buff *skb)
{
 struct dev_gso_cb *cb;

 do {
  struct sk_buff *nskb = skb->next;

  skb->next = nskb->next;
  nskb->next = ((void*)0);
  kfree_skb(nskb);
 } while (skb->next);

 cb = DEV_GSO_CB(skb);
 if (cb->destructor)
  cb->destructor(skb);
}
