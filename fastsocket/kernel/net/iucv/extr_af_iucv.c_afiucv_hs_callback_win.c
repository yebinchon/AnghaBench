
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ data; } ;
struct iucv_sock {int msg_sent; } ;
struct af_iucv_trans_hdr {int window; } ;


 scalar_t__ IUCV_CONNECTED ;
 int NET_RX_SUCCESS ;
 int atomic_sub (int ,int *) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int iucv_sock_wake_msglim (struct sock*) ;

__attribute__((used)) static int afiucv_hs_callback_win(struct sock *sk, struct sk_buff *skb)
{
 struct iucv_sock *iucv = iucv_sk(sk);
 struct af_iucv_trans_hdr *trans_hdr =
     (struct af_iucv_trans_hdr *)skb->data;

 if (!iucv)
  return NET_RX_SUCCESS;

 if (sk->sk_state != IUCV_CONNECTED)
  return NET_RX_SUCCESS;

 atomic_sub(trans_hdr->window, &iucv->msg_sent);
 iucv_sock_wake_msglim(sk);
 return NET_RX_SUCCESS;
}
