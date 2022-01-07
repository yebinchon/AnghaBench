
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {scalar_t__ data; } ;
struct iucv_sock {int msglimit_peer; } ;
struct af_iucv_trans_hdr {int window; } ;


 scalar_t__ IUCV_BOUND ;
 scalar_t__ IUCV_CONNECTED ;
 int NET_RX_SUCCESS ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int afiucv_hs_callback_synack(struct sock *sk, struct sk_buff *skb)
{
 struct iucv_sock *iucv = iucv_sk(sk);
 struct af_iucv_trans_hdr *trans_hdr =
     (struct af_iucv_trans_hdr *)skb->data;

 if (!iucv)
  goto out;
 if (sk->sk_state != IUCV_BOUND)
  goto out;
 bh_lock_sock(sk);
 iucv->msglimit_peer = trans_hdr->window;
 sk->sk_state = IUCV_CONNECTED;
 sk->sk_state_change(sk);
 bh_unlock_sock(sk);
out:
 kfree_skb(skb);
 return NET_RX_SUCCESS;
}
