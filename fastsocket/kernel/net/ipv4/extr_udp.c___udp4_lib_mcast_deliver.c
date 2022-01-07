
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int source; int dest; } ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int lock; int head; } ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct net {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int ifindex; } ;


 int GFP_ATOMIC ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 struct sock* sk_nulls_head (int *) ;
 struct sock* sk_nulls_next (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t udp_hashfn (struct net*,int ) ;
 int udp_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 struct sock* udp_v4_mcast_next (struct net*,struct sock*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int __udp4_lib_mcast_deliver(struct net *net, struct sk_buff *skb,
        struct udphdr *uh,
        __be32 saddr, __be32 daddr,
        struct udp_table *udptable)
{
 struct sock *sk;
 struct udp_hslot *hslot = &udptable->hash[udp_hashfn(net, ntohs(uh->dest))];
 int dif;

 spin_lock(&hslot->lock);
 sk = sk_nulls_head(&hslot->head);
 dif = skb->dev->ifindex;
 sk = udp_v4_mcast_next(net, sk, uh->dest, daddr, uh->source, saddr, dif);
 if (sk) {
  struct sock *sknext = ((void*)0);

  do {
   struct sk_buff *skb1 = skb;

   sknext = udp_v4_mcast_next(net, sk_nulls_next(sk), uh->dest,
         daddr, uh->source, saddr,
         dif);
   if (sknext)
    skb1 = skb_clone(skb, GFP_ATOMIC);

   if (skb1) {
    int ret = udp_queue_rcv_skb(sk, skb1);
    if (ret > 0)


     kfree_skb(skb1);
   }
   sk = sknext;
  } while (sknext);
 } else
  consume_skb(skb);
 spin_unlock(&hslot->lock);
 return 0;
}
