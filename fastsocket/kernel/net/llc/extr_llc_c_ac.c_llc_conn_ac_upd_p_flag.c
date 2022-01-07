
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;


 scalar_t__ LLC_PDU_IS_RSP (struct llc_pdu_sn*) ;
 int llc_conn_ac_stop_p_timer (struct sock*,struct sk_buff*) ;
 int llc_conn_set_p_flag (struct sock*,int ) ;
 int llc_pdu_decode_pf_bit (struct sk_buff*,scalar_t__*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

int llc_conn_ac_upd_p_flag(struct sock *sk, struct sk_buff *skb)
{
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 if (LLC_PDU_IS_RSP(pdu)) {
  u8 f_bit;

  llc_pdu_decode_pf_bit(skb, &f_bit);
  if (f_bit) {
   llc_conn_set_p_flag(sk, 0);
   llc_conn_ac_stop_p_timer(sk, skb);
  }
 }
 return 0;
}
