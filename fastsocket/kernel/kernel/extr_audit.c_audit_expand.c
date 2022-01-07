
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int truesize; } ;
struct audit_buffer {int gfp_mask; struct sk_buff* skb; } ;


 int audit_log_lost (char*) ;
 int pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static inline int audit_expand(struct audit_buffer *ab, int extra)
{
 struct sk_buff *skb = ab->skb;
 int oldtail = skb_tailroom(skb);
 int ret = pskb_expand_head(skb, 0, extra, ab->gfp_mask);
 int newtail = skb_tailroom(skb);

 if (ret < 0) {
  audit_log_lost("out of memory in audit_expand");
  return 0;
 }

 skb->truesize += newtail - oldtail;
 return newtail;
}
