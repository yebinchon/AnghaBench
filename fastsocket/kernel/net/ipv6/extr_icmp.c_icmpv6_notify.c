
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int nexthdr; } ;
struct inet6_protocol {int (* err_handler ) (struct sk_buff*,int *,int,int,int,int ) ;} ;
typedef int __be32 ;


 int MAX_INET_PROTOS ;
 int * inet6_protos ;
 scalar_t__ ipv6_ext_hdr (int) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,int*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int raw6_icmp_error (struct sk_buff*,int,int,int,int,int ) ;
 struct inet6_protocol* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,int *,int,int,int,int ) ;

__attribute__((used)) static void icmpv6_notify(struct sk_buff *skb, u8 type, u8 code, __be32 info)
{
 const struct inet6_protocol *ipprot;
 int inner_offset;
 int hash;
 u8 nexthdr;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  return;

 nexthdr = ((struct ipv6hdr *)skb->data)->nexthdr;
 if (ipv6_ext_hdr(nexthdr)) {

  inner_offset = ipv6_skip_exthdr(skb, sizeof(struct ipv6hdr), &nexthdr);
  if (inner_offset<0)
   return;
 } else {
  inner_offset = sizeof(struct ipv6hdr);
 }


 if (!pskb_may_pull(skb, inner_offset+8))
  return;
 hash = nexthdr & (MAX_INET_PROTOS - 1);

 rcu_read_lock();
 ipprot = rcu_dereference(inet6_protos[hash]);
 if (ipprot && ipprot->err_handler)
  ipprot->err_handler(skb, ((void*)0), type, code, inner_offset, info);
 rcu_read_unlock();

 raw6_icmp_error(skb, nexthdr, type, code, inner_offset, info);
}
