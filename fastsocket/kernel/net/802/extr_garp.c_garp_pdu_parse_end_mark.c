
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__* data; } ;


 scalar_t__ GARP_END_MARK ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int garp_pdu_parse_end_mark(struct sk_buff *skb)
{
 if (!pskb_may_pull(skb, sizeof(u8)))
  return -1;
 if (*skb->data == GARP_END_MARK) {
  skb_pull(skb, sizeof(u8));
  return -1;
 }
 return 0;
}
