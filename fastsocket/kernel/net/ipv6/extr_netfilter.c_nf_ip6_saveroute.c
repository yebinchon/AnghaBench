
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int mark; } ;
struct nf_queue_entry {scalar_t__ hook; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ip6_rt_info {int mark; int saddr; int daddr; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 struct ip6_rt_info* nf_queue_entry_reroute (struct nf_queue_entry*) ;

__attribute__((used)) static void nf_ip6_saveroute(const struct sk_buff *skb,
        struct nf_queue_entry *entry)
{
 struct ip6_rt_info *rt_info = nf_queue_entry_reroute(entry);

 if (entry->hook == NF_INET_LOCAL_OUT) {
  struct ipv6hdr *iph = ipv6_hdr(skb);

  rt_info->daddr = iph->daddr;
  rt_info->saddr = iph->saddr;
  rt_info->mark = skb->mark;
 }
}
