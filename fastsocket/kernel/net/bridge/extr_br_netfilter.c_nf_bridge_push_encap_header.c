
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int network_header; } ;


 unsigned int nf_bridge_encap_header_len (struct sk_buff*) ;
 int skb_push (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline void nf_bridge_push_encap_header(struct sk_buff *skb)
{
 unsigned int len = nf_bridge_encap_header_len(skb);

 skb_push(skb, len);
 skb->network_header -= len;
}
