
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct garp_msg_hdr {scalar_t__ attrtype; } ;
struct garp_applicant {int dummy; } ;


 scalar_t__ garp_pdu_parse_attr (struct garp_applicant*,struct sk_buff*,scalar_t__) ;
 scalar_t__ garp_pdu_parse_end_mark (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int garp_pdu_parse_msg(struct garp_applicant *app, struct sk_buff *skb)
{
 const struct garp_msg_hdr *gm;

 if (!pskb_may_pull(skb, sizeof(*gm)))
  return -1;
 gm = (struct garp_msg_hdr *)skb->data;
 if (gm->attrtype == 0)
  return -1;
 skb_pull(skb, sizeof(*gm));

 while (skb->len > 0) {
  if (garp_pdu_parse_attr(app, skb, gm->attrtype) < 0)
   return -1;
  if (garp_pdu_parse_end_mark(skb) < 0)
   break;
 }
 return 0;
}
