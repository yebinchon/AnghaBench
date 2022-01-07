
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;


 int LLC_I_GET_NR (struct llc_pdu_sn*) ;
 int llc_conn_resend_i_pdu_as_cmd (struct sock*,int ,int ) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

int llc_conn_ac_resend_i_xxx_x_set_0(struct sock *sk, struct sk_buff *skb)
{
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);
 u8 nr = LLC_I_GET_NR(pdu);

 llc_conn_resend_i_pdu_as_cmd(sk, nr, 0);
 return 0;
}
