
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; struct in6_addr saddr; } ;
typedef int __be32 ;
struct TYPE_4__ {int iif; } ;
struct TYPE_3__ {int lock; int * ht; } ;


 TYPE_2__* IP6CB (struct sk_buff*) ;
 int RAW_HTABLE_SIZE ;
 struct sock* __raw_v6_lookup (struct net*,struct sock*,int,struct in6_addr*,struct in6_addr*,int ) ;
 struct net* dev_net (int ) ;
 TYPE_1__ raw_v6_hashinfo ;
 int rawv6_err (struct sock*,struct sk_buff*,int *,int ,int ,int,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sock* sk_head (int *) ;
 struct sock* sk_next (struct sock*) ;

void raw6_icmp_error(struct sk_buff *skb, int nexthdr,
  u8 type, u8 code, int inner_offset, __be32 info)
{
 struct sock *sk;
 int hash;
 struct in6_addr *saddr, *daddr;
 struct net *net;

 hash = nexthdr & (RAW_HTABLE_SIZE - 1);

 read_lock(&raw_v6_hashinfo.lock);
 sk = sk_head(&raw_v6_hashinfo.ht[hash]);
 if (sk != ((void*)0)) {

  struct ipv6hdr *ip6h = (struct ipv6hdr *)skb->data;
  saddr = &ip6h->saddr;
  daddr = &ip6h->daddr;
  net = dev_net(skb->dev);

  while ((sk = __raw_v6_lookup(net, sk, nexthdr, saddr, daddr,
      IP6CB(skb)->iif))) {
   rawv6_err(sk, skb, ((void*)0), type, code,
     inner_offset, info);
   sk = sk_next(sk);
  }
 }
 read_unlock(&raw_v6_hashinfo.lock);
}
