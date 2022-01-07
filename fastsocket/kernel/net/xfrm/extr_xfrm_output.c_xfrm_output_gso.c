
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 int xfrm_output2 (struct sk_buff*) ;

__attribute__((used)) static int xfrm_output_gso(struct sk_buff *skb)
{
 struct sk_buff *segs;

 segs = skb_gso_segment(skb, 0);
 kfree_skb(skb);
 if (IS_ERR(segs))
  return PTR_ERR(segs);

 do {
  struct sk_buff *nskb = segs->next;
  int err;

  segs->next = ((void*)0);
  err = xfrm_output2(segs);

  if (unlikely(err)) {
   while ((segs = nskb)) {
    nskb = segs->next;
    segs->next = ((void*)0);
    kfree_skb(segs);
   }
   return err;
  }

  segs = nskb;
 } while (segs);

 return 0;
}
