
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int n2; int retry_count; } ;
struct llc_pdu_un {int dummy; } ;
struct llc_conn_state_ev {int type; int ind_prim; int reason; } ;


 int LLC_2_PDU_CMD_SABME ;
 int LLC_2_PDU_RSP_FRMR ;





 int LLC_PDU_IS_CMD (struct llc_pdu_un*) ;
 int LLC_PDU_IS_RSP (struct llc_pdu_un*) ;
 int LLC_PDU_TYPE_IS_U (struct llc_pdu_un*) ;
 int LLC_RESET_PRIM ;
 int LLC_RESET_REASON_LOCAL ;
 int LLC_RESET_REASON_REMOTE ;
 int LLC_U_PDU_CMD (struct llc_pdu_un*) ;
 int LLC_U_PDU_RSP (struct llc_pdu_un*) ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_rst_ind(struct sock *sk, struct sk_buff *skb)
{
 u8 reason = 0;
 int rc = 1;
 struct llc_conn_state_ev *ev = llc_conn_ev(skb);
 struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);
 struct llc_sock *llc = llc_sk(sk);

 switch (ev->type) {
 case 130:
  if (LLC_PDU_IS_RSP(pdu) &&
      LLC_PDU_TYPE_IS_U(pdu) &&
      LLC_U_PDU_RSP(pdu) == LLC_2_PDU_RSP_FRMR) {
   reason = LLC_RESET_REASON_LOCAL;
   rc = 0;
  } else if (LLC_PDU_IS_CMD(pdu) &&
      LLC_PDU_TYPE_IS_U(pdu) &&
      LLC_U_PDU_CMD(pdu) == LLC_2_PDU_CMD_SABME) {
   reason = LLC_RESET_REASON_REMOTE;
   rc = 0;
  }
  break;
 case 132:
 case 129:
 case 128:
 case 131:
  if (llc->retry_count > llc->n2) {
   reason = LLC_RESET_REASON_LOCAL;
   rc = 0;
  }
  break;
 }
 if (!rc) {
  ev->reason = reason;
  ev->ind_prim = LLC_RESET_PRIM;
 }
 return rc;
}
