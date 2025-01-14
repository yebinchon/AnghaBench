
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct ip6_ra_chain {int sel; struct sock* sk; struct ip6_ra_chain* next; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;


 int GFP_ATOMIC ;
 struct ip6_ra_chain* ip6_ra_chain ;
 int ip6_ra_lock ;
 int rawv6_rcv (struct sock*,struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int ip6_call_ra_chain(struct sk_buff *skb, int sel)
{
 struct ip6_ra_chain *ra;
 struct sock *last = ((void*)0);

 read_lock(&ip6_ra_lock);
 for (ra = ip6_ra_chain; ra; ra = ra->next) {
  struct sock *sk = ra->sk;
  if (sk && ra->sel == sel &&
      (!sk->sk_bound_dev_if ||
       sk->sk_bound_dev_if == skb->dev->ifindex)) {
   if (last) {
    struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
    if (skb2)
     rawv6_rcv(last, skb2);
   }
   last = sk;
  }
 }

 if (last) {
  rawv6_rcv(last, skb);
  read_unlock(&ip6_ra_lock);
  return 1;
 }
 read_unlock(&ip6_ra_lock);
 return 0;
}
