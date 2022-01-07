
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* nf_bridge; } ;
struct TYPE_2__ {int data; } ;


 int ETH_HLEN ;
 int nf_bridge_encap_header_len (struct sk_buff*) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,int ,int) ;

__attribute__((used)) static inline void nf_bridge_save_header(struct sk_buff *skb)
{
 int header_size = ETH_HLEN + nf_bridge_encap_header_len(skb);

 skb_copy_from_linear_data_offset(skb, -header_size,
      skb->nf_bridge->data, header_size);
}
