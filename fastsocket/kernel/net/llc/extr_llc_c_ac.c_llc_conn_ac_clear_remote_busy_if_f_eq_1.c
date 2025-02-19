
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {scalar_t__ ack_pf; } ;


 scalar_t__ LLC_I_PF_IS_1 (struct llc_pdu_sn*) ;
 scalar_t__ LLC_PDU_IS_RSP (struct llc_pdu_sn*) ;
 scalar_t__ LLC_PDU_TYPE_IS_I (struct llc_pdu_sn*) ;
 int llc_conn_ac_clear_remote_busy (struct sock*,struct sk_buff*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ac_clear_remote_busy_if_f_eq_1(struct sock *sk,
         struct sk_buff *skb)
{
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 if (LLC_PDU_IS_RSP(pdu) &&
     LLC_PDU_TYPE_IS_I(pdu) &&
     LLC_I_PF_IS_1(pdu) && llc_sk(sk)->ack_pf)
  llc_conn_ac_clear_remote_busy(sk, skb);
 return 0;
}
