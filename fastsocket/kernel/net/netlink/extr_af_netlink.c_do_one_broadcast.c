
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netlink_sock {scalar_t__ pid; int ngroups; int flags; int groups; } ;
struct netlink_broadcast_data {scalar_t__ pid; int group; int failure; int delivery_failure; int congested; int delivered; int * skb2; int skb; int allocation; int net; struct sock* exclude_sk; } ;


 int NETLINK_BROADCAST_SEND_ERROR ;
 int kfree_skb (int *) ;
 int net_eq (int ,int ) ;
 int netlink_broadcast_deliver (struct sock*,int *) ;
 int netlink_overrun (struct sock*) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 scalar_t__ sk_filter (struct sock*,int *) ;
 int * skb_clone (int ,int ) ;
 int * skb_get (int ) ;
 int skb_orphan (int *) ;
 scalar_t__ skb_shared (int ) ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static inline int do_one_broadcast(struct sock *sk,
       struct netlink_broadcast_data *p)
{
 struct netlink_sock *nlk = nlk_sk(sk);
 int val;

 if (p->exclude_sk == sk)
  goto out;

 if (nlk->pid == p->pid || p->group - 1 >= nlk->ngroups ||
     !test_bit(p->group - 1, nlk->groups))
  goto out;

 if (!net_eq(sock_net(sk), p->net))
  goto out;

 if (p->failure) {
  netlink_overrun(sk);
  goto out;
 }

 sock_hold(sk);
 if (p->skb2 == ((void*)0)) {
  if (skb_shared(p->skb)) {
   p->skb2 = skb_clone(p->skb, p->allocation);
  } else {
   p->skb2 = skb_get(p->skb);




   skb_orphan(p->skb2);
  }
 }
 if (p->skb2 == ((void*)0)) {
  netlink_overrun(sk);

  p->failure = 1;
  if (nlk->flags & NETLINK_BROADCAST_SEND_ERROR)
   p->delivery_failure = 1;
 } else if (sk_filter(sk, p->skb2)) {
  kfree_skb(p->skb2);
  p->skb2 = ((void*)0);
 } else if ((val = netlink_broadcast_deliver(sk, p->skb2)) < 0) {
  netlink_overrun(sk);
  if (nlk->flags & NETLINK_BROADCAST_SEND_ERROR)
   p->delivery_failure = 1;
 } else {
  p->congested |= val;
  p->delivered = 1;
  p->skb2 = ((void*)0);
 }
 sock_put(sk);

out:
 return 0;
}
