
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;


 scalar_t__ LLC_I_PF_IS_1 (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_IS_CMD (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_I (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_S (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_U (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_U_PF_IS_1 (struct llc_pdu_sn const*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

int llc_conn_ev_rx_xxx_cmd_pbit_set_1(struct sock *sk, struct sk_buff *skb)
{
 u16 rc = 1;
 const struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 if (LLC_PDU_IS_CMD(pdu)) {
  if (LLC_PDU_TYPE_IS_I(pdu) || LLC_PDU_TYPE_IS_S(pdu)) {
   if (LLC_I_PF_IS_1(pdu))
    rc = 0;
  } else if (LLC_PDU_TYPE_IS_U(pdu) && LLC_U_PF_IS_1(pdu))
   rc = 0;
 }
 return rc;
}
