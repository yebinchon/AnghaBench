
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dev; } ;
struct TYPE_3__ {int lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct TYPE_4__ {int h_proto; } ;


 int ETH_ALEN ;
 int LLC_PDU_RSP ;
 int LLC_PDU_TYPE_U ;
 int dev_queue_xmit (struct sk_buff*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct sk_buff* llc_alloc_frame (int *,int ,int ,scalar_t__) ;
 int llc_mac_hdr_init (struct sk_buff*,int *,int *) ;
 int llc_pdu_decode_da (struct sk_buff*,int *) ;
 int llc_pdu_decode_sa (struct sk_buff*,int *) ;
 int llc_pdu_decode_ssap (struct sk_buff*,int *) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,int ,int ) ;
 int llc_pdu_init_as_test_rsp (struct sk_buff*,struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;

int llc_sap_action_send_test_r(struct llc_sap *sap, struct sk_buff *skb)
{
 u8 mac_da[ETH_ALEN], mac_sa[ETH_ALEN], dsap;
 struct sk_buff *nskb;
 int rc = 1;
 u32 data_size;

 llc_pdu_decode_sa(skb, mac_da);
 llc_pdu_decode_da(skb, mac_sa);
 llc_pdu_decode_ssap(skb, &dsap);


 data_size = ntohs(eth_hdr(skb)->h_proto) - 3;
 nskb = llc_alloc_frame(((void*)0), skb->dev, LLC_PDU_TYPE_U, data_size);
 if (!nskb)
  goto out;
 llc_pdu_header_init(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap, dsap,
       LLC_PDU_RSP);
 llc_pdu_init_as_test_rsp(nskb, skb);
 rc = llc_mac_hdr_init(nskb, mac_sa, mac_da);
 if (likely(!rc))
  rc = dev_queue_xmit(nskb);
out:
 return rc;
}
