
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {scalar_t__ ifindex; } ;
struct ip_ra_chain {struct sock* sk; struct ip_ra_chain* next; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {scalar_t__ protocol; int frag_off; } ;


 int GFP_ATOMIC ;
 int IP_DEFRAG_CALL_RA_CHAIN ;
 int IP_MF ;
 int IP_OFFSET ;
 scalar_t__ dev_net (struct net_device*) ;
 int htons (int) ;
 TYPE_2__* inet_sk (struct sock*) ;
 scalar_t__ ip_defrag (struct sk_buff*,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 struct ip_ra_chain* ip_ra_chain ;
 int ip_ra_lock ;
 int raw_rcv (struct sock*,struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_net (struct sock*) ;

int ip_call_ra_chain(struct sk_buff *skb)
{
 struct ip_ra_chain *ra;
 u8 protocol = ip_hdr(skb)->protocol;
 struct sock *last = ((void*)0);
 struct net_device *dev = skb->dev;

 read_lock(&ip_ra_lock);
 for (ra = ip_ra_chain; ra; ra = ra->next) {
  struct sock *sk = ra->sk;




  if (sk && inet_sk(sk)->num == protocol &&
      (!sk->sk_bound_dev_if ||
       sk->sk_bound_dev_if == dev->ifindex) &&
      sock_net(sk) == dev_net(dev)) {
   if (ip_hdr(skb)->frag_off & htons(IP_MF | IP_OFFSET)) {
    if (ip_defrag(skb, IP_DEFRAG_CALL_RA_CHAIN)) {
     read_unlock(&ip_ra_lock);
     return 1;
    }
   }
   if (last) {
    struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
    if (skb2)
     raw_rcv(last, skb2);
   }
   last = sk;
  }
 }

 if (last) {
  raw_rcv(last, skb);
  read_unlock(&ip_ra_lock);
  return 1;
 }
 read_unlock(&ip_ra_lock);
 return 0;
}
