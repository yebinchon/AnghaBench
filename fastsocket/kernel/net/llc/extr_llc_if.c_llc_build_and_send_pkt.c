
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct llc_sock {scalar_t__ state; int failed_data_req; int dev; scalar_t__ p_flag; } ;
struct llc_conn_state_ev {int prim_type; int prim; int type; } ;


 int EBUSY ;
 int ECONNABORTED ;
 int LLC_CONN_EV_TYPE_PRIM ;
 scalar_t__ LLC_CONN_STATE_ADM ;
 int LLC_DATA_PRIM ;
 int LLC_PRIM_TYPE_REQ ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;
 int llc_conn_state_process (struct sock*,struct sk_buff*) ;
 scalar_t__ llc_data_accept_state (scalar_t__) ;
 struct llc_sock* llc_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

int llc_build_and_send_pkt(struct sock *sk, struct sk_buff *skb)
{
 struct llc_conn_state_ev *ev;
 int rc = -ECONNABORTED;
 struct llc_sock *llc = llc_sk(sk);

 if (unlikely(llc->state == LLC_CONN_STATE_ADM))
  goto out;
 rc = -EBUSY;
 if (unlikely(llc_data_accept_state(llc->state) ||
       llc->p_flag)) {
  llc->failed_data_req = 1;
  goto out;
 }
 ev = llc_conn_ev(skb);
 ev->type = LLC_CONN_EV_TYPE_PRIM;
 ev->prim = LLC_DATA_PRIM;
 ev->prim_type = LLC_PRIM_TYPE_REQ;
 skb->dev = llc->dev;
 rc = llc_conn_state_process(sk, skb);
out:
 return rc;
}
