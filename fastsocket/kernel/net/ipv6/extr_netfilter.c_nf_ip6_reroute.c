
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ mark; } ;
struct nf_queue_entry {scalar_t__ hook; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ip6_rt_info {scalar_t__ mark; int saddr; int daddr; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 int ip6_route_me_harder (struct sk_buff*) ;
 int ipv6_addr_equal (int *,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 struct ip6_rt_info* nf_queue_entry_reroute (struct nf_queue_entry const*) ;

__attribute__((used)) static int nf_ip6_reroute(struct sk_buff *skb,
     const struct nf_queue_entry *entry)
{
 struct ip6_rt_info *rt_info = nf_queue_entry_reroute(entry);

 if (entry->hook == NF_INET_LOCAL_OUT) {
  struct ipv6hdr *iph = ipv6_hdr(skb);
  if (!ipv6_addr_equal(&iph->daddr, &rt_info->daddr) ||
      !ipv6_addr_equal(&iph->saddr, &rt_info->saddr) ||
      skb->mark != rt_info->mark)
   return ip6_route_me_harder(skb);
 }
 return 0;
}
