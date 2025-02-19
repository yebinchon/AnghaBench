
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;


 scalar_t__ LLC_2_PDU_RSP_RR ;
 scalar_t__ LLC_PDU_IS_RSP (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_S (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_S_PDU_RSP (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_S_PF_IS_0 (struct llc_pdu_sn const*) ;
 scalar_t__ llc_conn_space (struct sock*,struct sk_buff*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

int llc_conn_ev_rx_rr_rsp_fbit_set_0(struct sock *sk, struct sk_buff *skb)
{
 const struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 return llc_conn_space(sk, skb) &&
        LLC_PDU_IS_RSP(pdu) && LLC_PDU_TYPE_IS_S(pdu) &&
        LLC_S_PF_IS_0(pdu) &&
        LLC_S_PDU_RSP(pdu) == LLC_2_PDU_RSP_RR ? 0 : 1;
}
