
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {TYPE_2__* sap; } ;
struct llc_conn_state_ev {int prim_type; int prim; int type; } ;
struct llc_addr {int mac; int lsap; } ;
struct TYPE_3__ {int lsap; } ;
struct TYPE_4__ {TYPE_1__ laddr; } ;


 int EISCONN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int LLC_CONN_EV_TYPE_PRIM ;
 int LLC_CONN_PRIM ;
 int LLC_PRIM_TYPE_REQ ;
 scalar_t__ TCP_ESTABLISHED ;
 struct sk_buff* alloc_skb (int ,int ) ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;
 int llc_conn_state_process (struct sock*,struct sk_buff*) ;
 struct sock* llc_lookup_established (TYPE_2__*,struct llc_addr*,struct llc_addr*) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int memcpy (int ,int *,int) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

int llc_establish_connection(struct sock *sk, u8 *lmac, u8 *dmac, u8 dsap)
{
 int rc = -EISCONN;
 struct llc_addr laddr, daddr;
 struct sk_buff *skb;
 struct llc_sock *llc = llc_sk(sk);
 struct sock *existing;

 laddr.lsap = llc->sap->laddr.lsap;
 daddr.lsap = dsap;
 memcpy(daddr.mac, dmac, sizeof(daddr.mac));
 memcpy(laddr.mac, lmac, sizeof(laddr.mac));
 existing = llc_lookup_established(llc->sap, &daddr, &laddr);
 if (existing) {
  if (existing->sk_state == TCP_ESTABLISHED) {
   sk = existing;
   goto out_put;
  } else
   sock_put(existing);
 }
 sock_hold(sk);
 rc = -ENOMEM;
 skb = alloc_skb(0, GFP_ATOMIC);
 if (skb) {
  struct llc_conn_state_ev *ev = llc_conn_ev(skb);

  ev->type = LLC_CONN_EV_TYPE_PRIM;
  ev->prim = LLC_CONN_PRIM;
  ev->prim_type = LLC_PRIM_TYPE_REQ;
  skb_set_owner_w(skb, sk);
  rc = llc_conn_state_process(sk, skb);
 }
out_put:
 sock_put(sk);
 return rc;
}
