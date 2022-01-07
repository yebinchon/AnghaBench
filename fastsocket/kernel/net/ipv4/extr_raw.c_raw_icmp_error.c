
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int lock; int * ht; } ;


 int RAW_HTABLE_SIZE ;
 struct sock* __raw_v4_lookup (struct net*,struct sock*,int,int ,int ,int ) ;
 struct net* dev_net (TYPE_2__*) ;
 int raw_err (struct sock*,struct sk_buff*,int ) ;
 TYPE_1__ raw_v4_hashinfo ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sock* sk_head (int *) ;
 struct sock* sk_next (struct sock*) ;

void raw_icmp_error(struct sk_buff *skb, int protocol, u32 info)
{
 int hash;
 struct sock *raw_sk;
 struct iphdr *iph;
 struct net *net;

 hash = protocol & (RAW_HTABLE_SIZE - 1);

 read_lock(&raw_v4_hashinfo.lock);
 raw_sk = sk_head(&raw_v4_hashinfo.ht[hash]);
 if (raw_sk != ((void*)0)) {
  iph = (struct iphdr *)skb->data;
  net = dev_net(skb->dev);

  while ((raw_sk = __raw_v4_lookup(net, raw_sk, protocol,
      iph->daddr, iph->saddr,
      skb->dev->ifindex)) != ((void*)0)) {
   raw_err(raw_sk, skb, info);
   raw_sk = sk_next(raw_sk);
   iph = (struct iphdr *)skb->data;
  }
 }
 read_unlock(&raw_v4_hashinfo.lock);
}
