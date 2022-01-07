
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int destructor; struct sk_buff* next; } ;
struct TYPE_2__ {int destructor; } ;


 TYPE_1__* DEV_GSO_CB (struct sk_buff*) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_gso_skb_destructor ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int) ;

__attribute__((used)) static int dev_gso_segment(struct sk_buff *skb, int features)
{
 struct sk_buff *segs;

 segs = skb_gso_segment(skb, features);


 if (!segs)
  return 0;

 if (IS_ERR(segs))
  return PTR_ERR(segs);

 skb->next = segs;
 DEV_GSO_CB(skb)->destructor = skb->destructor;
 skb->destructor = dev_gso_skb_destructor;

 return 0;
}
