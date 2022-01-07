
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* nf_bridge; } ;
struct TYPE_2__ {int data; } ;


 int ETH_HLEN ;
 int __skb_push (struct sk_buff*,int) ;
 int nf_bridge_encap_header_len (struct sk_buff*) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,int ,int) ;
 int skb_cow_head (struct sk_buff*,int) ;

int nf_bridge_copy_header(struct sk_buff *skb)
{
 int err;
 int header_size = ETH_HLEN + nf_bridge_encap_header_len(skb);

 err = skb_cow_head(skb, header_size);
 if (err)
  return err;

 skb_copy_to_linear_data_offset(skb, -header_size,
           skb->nf_bridge->data, header_size);
 __skb_push(skb, nf_bridge_encap_header_len(skb));
 return 0;
}
