
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {int ind_prim; } ;


 int LLC_DATA_PRIM ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;

void llc_conn_rtn_pdu(struct sock *sk, struct sk_buff *skb)
{
 struct llc_conn_state_ev *ev = llc_conn_ev(skb);

 ev->ind_prim = LLC_DATA_PRIM;
}
