
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; int sk_rmem_alloc; } ;
struct sk_buff {int len; int users; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;

__attribute__((used)) static int pfkey_broadcast_one(struct sk_buff *skb, struct sk_buff **skb2,
          gfp_t allocation, struct sock *sk)
{
 int err = -ENOBUFS;

 sock_hold(sk);
 if (*skb2 == ((void*)0)) {
  if (atomic_read(&skb->users) != 1) {
   *skb2 = skb_clone(skb, allocation);
  } else {
   *skb2 = skb;
   atomic_inc(&skb->users);
  }
 }
 if (*skb2 != ((void*)0)) {
  if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf) {
   skb_orphan(*skb2);
   skb_set_owner_r(*skb2, sk);
   skb_queue_tail(&sk->sk_receive_queue, *skb2);
   sk->sk_data_ready(sk, (*skb2)->len);
   *skb2 = ((void*)0);
   err = 0;
  }
 }
 sock_put(sk);
 return err;
}
