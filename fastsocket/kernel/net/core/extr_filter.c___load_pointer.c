
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct sk_buff {void* head; } ;


 int SKF_LL_OFF ;
 int SKF_NET_OFF ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 void* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static void *__load_pointer(struct sk_buff *skb, int k)
{
 u8 *ptr = ((void*)0);

 if (k >= SKF_NET_OFF)
  ptr = skb_network_header(skb) + k - SKF_NET_OFF;
 else if (k >= SKF_LL_OFF)
  ptr = skb_mac_header(skb) + k - SKF_LL_OFF;

 if (ptr >= skb->head && ptr < skb_tail_pointer(skb))
  return ptr;
 return ((void*)0);
}
