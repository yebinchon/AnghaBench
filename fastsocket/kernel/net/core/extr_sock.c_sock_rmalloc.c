
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 struct sk_buff* alloc_skb (unsigned long,int ) ;
 scalar_t__ atomic_read (int *) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;

struct sk_buff *sock_rmalloc(struct sock *sk, unsigned long size, int force,
        gfp_t priority)
{
 if (force || atomic_read(&sk->sk_rmem_alloc) < sk->sk_rcvbuf) {
  struct sk_buff *skb = alloc_skb(size, priority);
  if (skb) {
   skb_set_owner_r(skb, sk);
   return skb;
  }
 }
 return ((void*)0);
}
