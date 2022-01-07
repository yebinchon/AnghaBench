
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ovs_key_ipv6 {int ipv6_hlimit; int ipv6_label; int ipv6_tclass; int ipv6_dst; int ipv6_proto; int ipv6_src; } ;
struct ipv6hdr {int hop_limit; int nexthdr; int daddr; int saddr; } ;
typedef int __be32 ;


 int IP6_FH_F_SKIP_RH ;
 scalar_t__ NEXTHDR_ROUTING ;
 scalar_t__ ipv6_ext_hdr (int ) ;
 scalar_t__ ipv6_find_hdr (struct sk_buff*,unsigned int*,scalar_t__,int *,int*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int make_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ memcmp (int ,int *,int) ;
 int ntohl (int ) ;
 int set_ipv6_addr (struct sk_buff*,int ,int *,int ,int) ;
 int set_ipv6_fl (struct ipv6hdr*,int ) ;
 int set_ipv6_tc (struct ipv6hdr*,int ) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_ipv6(struct sk_buff *skb, const struct ovs_key_ipv6 *ipv6_key)
{
 struct ipv6hdr *nh;
 int err;
 __be32 *saddr;
 __be32 *daddr;

 err = make_writable(skb, skb_network_offset(skb) +
       sizeof(struct ipv6hdr));
 if (unlikely(err))
  return err;

 nh = ipv6_hdr(skb);
 saddr = (__be32 *)&nh->saddr;
 daddr = (__be32 *)&nh->daddr;

 if (memcmp(ipv6_key->ipv6_src, saddr, sizeof(ipv6_key->ipv6_src)))
  set_ipv6_addr(skb, ipv6_key->ipv6_proto, saddr,
         ipv6_key->ipv6_src, 1);

 if (memcmp(ipv6_key->ipv6_dst, daddr, sizeof(ipv6_key->ipv6_dst))) {
  unsigned int offset = 0;
  int flags = IP6_FH_F_SKIP_RH;
  bool recalc_csum = 1;

  if (ipv6_ext_hdr(nh->nexthdr))
   recalc_csum = ipv6_find_hdr(skb, &offset,
          NEXTHDR_ROUTING, ((void*)0),
          &flags) != NEXTHDR_ROUTING;

  set_ipv6_addr(skb, ipv6_key->ipv6_proto, daddr,
         ipv6_key->ipv6_dst, recalc_csum);
 }

 set_ipv6_tc(nh, ipv6_key->ipv6_tclass);
 set_ipv6_fl(nh, ntohl(ipv6_key->ipv6_label));
 nh->hop_limit = ipv6_key->ipv6_hlimit;

 return 0;
}
