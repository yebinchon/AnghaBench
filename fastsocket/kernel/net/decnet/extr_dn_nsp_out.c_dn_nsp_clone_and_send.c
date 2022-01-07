
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct dn_skb_cb {int xmit_count; int stamp; } ;
typedef int gfp_t ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int dn_nsp_send (struct sk_buff*) ;
 int jiffies ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static inline unsigned dn_nsp_clone_and_send(struct sk_buff *skb,
          gfp_t gfp)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 struct sk_buff *skb2;
 int ret = 0;

 if ((skb2 = skb_clone(skb, gfp)) != ((void*)0)) {
  ret = cb->xmit_count;
  cb->xmit_count++;
  cb->stamp = jiffies;
  skb2->sk = skb->sk;
  dn_nsp_send(skb2);
 }

 return ret;
}
