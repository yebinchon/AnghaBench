
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int ctrl_2; int ctrl_1; } ;





 int LLC_S_PF_BIT_MASK ;
 int LLC_U_PF_BIT_MASK ;
 int llc_pdu_decode_pdu_type (struct sk_buff*,int*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

void llc_pdu_decode_pf_bit(struct sk_buff *skb, u8 *pf_bit)
{
 u8 pdu_type;
 struct llc_pdu_sn *pdu;

 llc_pdu_decode_pdu_type(skb, &pdu_type);
 pdu = llc_pdu_sn_hdr(skb);

 switch (pdu_type) {
 case 130:
 case 129:
  *pf_bit = pdu->ctrl_2 & LLC_S_PF_BIT_MASK;
  break;
 case 128:
  *pf_bit = (pdu->ctrl_1 & LLC_U_PF_BIT_MASK) >> 4;
  break;
 }
}
