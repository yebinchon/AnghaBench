
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct netlink_sock {int state; } ;


 scalar_t__ atomic_read (int *) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int stub1 (struct sock*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int netlink_broadcast_deliver(struct sock *sk,
         struct sk_buff *skb)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf &&
     !test_bit(0, &nlk->state)) {
  skb_set_owner_r(skb, sk);
  skb_queue_tail(&sk->sk_receive_queue, skb);
  sk->sk_data_ready(sk, skb->len);
  return atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf;
 }
 return -1;
}
