
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ len; } ;
struct l2cap_conn {int src; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ imtu; } ;


 scalar_t__ BT_BOUND ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct sock*,scalar_t__) ;
 int bh_unlock_sock (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sock* l2cap_get_sock_by_psm (int ,int ,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline int l2cap_conless_channel(struct l2cap_conn *conn, __le16 psm, struct sk_buff *skb)
{
 struct sock *sk;

 sk = l2cap_get_sock_by_psm(0, psm, conn->src);
 if (!sk)
  goto drop;

 BT_DBG("sk %p, len %d", sk, skb->len);

 if (sk->sk_state != BT_BOUND && sk->sk_state != BT_CONNECTED)
  goto drop;

 if (l2cap_pi(sk)->imtu < skb->len)
  goto drop;

 if (!sock_queue_rcv_skb(sk, skb))
  goto done;

drop:
 kfree_skb(skb);

done:
 if (sk)
  bh_unlock_sock(sk);
 return 0;
}
