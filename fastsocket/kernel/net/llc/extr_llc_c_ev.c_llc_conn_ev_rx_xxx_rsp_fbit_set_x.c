
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_un {int dummy; } ;





 scalar_t__ LLC_PDU_IS_RSP (struct llc_pdu_un const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_I (struct llc_pdu_un const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_S (struct llc_pdu_un const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_U (struct llc_pdu_un const*) ;
 int LLC_U_PDU_RSP (struct llc_pdu_un const*) ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;

int llc_conn_ev_rx_xxx_rsp_fbit_set_x(struct sock *sk, struct sk_buff *skb)
{
 u16 rc = 1;
 const struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 if (LLC_PDU_IS_RSP(pdu)) {
  if (LLC_PDU_TYPE_IS_I(pdu) || LLC_PDU_TYPE_IS_S(pdu))
   rc = 0;
  else if (LLC_PDU_TYPE_IS_U(pdu))
   switch (LLC_U_PDU_RSP(pdu)) {
   case 128:
   case 130:
   case 129:
    rc = 0;
    break;
   }
 }

 return rc;
}
