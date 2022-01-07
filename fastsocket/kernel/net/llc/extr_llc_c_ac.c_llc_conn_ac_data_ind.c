
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int llc_conn_rtn_pdu (struct sock*,struct sk_buff*) ;

int llc_conn_ac_data_ind(struct sock *sk, struct sk_buff *skb)
{
 llc_conn_rtn_pdu(sk, skb);
 return 0;
}
