
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {int status; } ;


 int LLC_STATUS_CONN ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;

int llc_conn_ev_qlfy_set_status_conn(struct sock *sk, struct sk_buff *skb)
{
 struct llc_conn_state_ev *ev = llc_conn_ev(skb);

 ev->status = LLC_STATUS_CONN;
 return 0;
}
