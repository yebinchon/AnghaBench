
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_table {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 struct sock* __udp4_lib_lookup (int ,int ,int ,int ,int ,int ,struct udp_table*) ;
 int dev_net (int ) ;
 int inet_iif (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 struct sock* skb_steal_sock (struct sk_buff*) ;
 scalar_t__ unlikely (struct sock*) ;

__attribute__((used)) static inline struct sock *__udp4_lib_lookup_skb(struct sk_buff *skb,
       __be16 sport, __be16 dport,
       struct udp_table *udptable)
{
 struct sock *sk;
 const struct iphdr *iph = ip_hdr(skb);

 if (unlikely(sk = skb_steal_sock(skb)))
  return sk;
 else
  return __udp4_lib_lookup(dev_net(skb_dst(skb)->dev), iph->saddr, sport,
      iph->daddr, dport, inet_iif(skb),
      udptable);
}
