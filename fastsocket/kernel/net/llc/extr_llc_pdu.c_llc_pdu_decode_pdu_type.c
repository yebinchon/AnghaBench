
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llc_pdu_un {int ctrl_1; } ;


 int LLC_PDU_TYPE_I ;
 int LLC_PDU_TYPE_S ;
 int LLC_PDU_TYPE_U ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;

__attribute__((used)) static void llc_pdu_decode_pdu_type(struct sk_buff *skb, u8 *type)
{
 struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 if (pdu->ctrl_1 & 1) {
  if ((pdu->ctrl_1 & LLC_PDU_TYPE_U) == LLC_PDU_TYPE_U)
   *type = LLC_PDU_TYPE_U;
  else
   *type = LLC_PDU_TYPE_S;
 } else
  *type = LLC_PDU_TYPE_I;
}
