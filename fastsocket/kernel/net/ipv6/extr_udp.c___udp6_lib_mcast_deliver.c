
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int source; int dest; } ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int lock; int head; } ;
struct sock {int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;


 int GFP_ATOMIC ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int inet6_iif (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ sk_add_backlog (struct sock*,struct sk_buff*,int ) ;
 struct sock* sk_nulls_head (int *) ;
 struct sock* sk_nulls_next (struct sock*) ;
 scalar_t__ sk_rcvqueues_full (struct sock*,struct sk_buff*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int sock_owned_by_user (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t udp_hashfn (struct net*,int ) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 struct sock* udp_v6_mcast_next (struct net*,struct sock*,int ,struct in6_addr*,int ,struct in6_addr*,int) ;
 int udpv6_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int __udp6_lib_mcast_deliver(struct net *net, struct sk_buff *skb,
  struct in6_addr *saddr, struct in6_addr *daddr,
  struct udp_table *udptable)
{
 struct sock *sk, *sk2;
 const struct udphdr *uh = udp_hdr(skb);
 struct udp_hslot *hslot = &udptable->hash[udp_hashfn(net, ntohs(uh->dest))];
 int dif;

 spin_lock(&hslot->lock);
 sk = sk_nulls_head(&hslot->head);
 dif = inet6_iif(skb);
 sk = udp_v6_mcast_next(net, sk, uh->dest, daddr, uh->source, saddr, dif);
 if (!sk) {
  kfree_skb(skb);
  goto out;
 }

 sk2 = sk;
 while ((sk2 = udp_v6_mcast_next(net, sk_nulls_next(sk2), uh->dest, daddr,
     uh->source, saddr, dif))) {
  struct sk_buff *buff = skb_clone(skb, GFP_ATOMIC);
  if (buff) {
   bh_lock_sock(sk2);
   if (!sock_owned_by_user(sk2))
    udpv6_queue_rcv_skb(sk2, buff);
   else if (sk_add_backlog(sk2, buff, sk2->sk_rcvbuf))
    kfree_skb(buff);
   bh_unlock_sock(sk2);
  }
 }
 if (sk_rcvqueues_full(sk, skb, sk->sk_rcvbuf)) {
  kfree_skb(skb);
  goto out;
 }
 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk))
  udpv6_queue_rcv_skb(sk, skb);
 else if (sk_add_backlog(sk, skb, sk->sk_rcvbuf))
  kfree_skb(skb);
 bh_unlock_sock(sk);
out:
 spin_unlock(&hslot->lock);
 return 0;
}
