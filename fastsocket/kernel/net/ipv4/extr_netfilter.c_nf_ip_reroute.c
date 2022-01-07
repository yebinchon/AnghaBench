
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ mark; } ;
struct nf_queue_entry {scalar_t__ hook; } ;
struct iphdr {scalar_t__ tos; scalar_t__ daddr; scalar_t__ saddr; } ;
struct ip_rt_info {scalar_t__ tos; scalar_t__ mark; scalar_t__ daddr; scalar_t__ saddr; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 int RTN_UNSPEC ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_me_harder (struct sk_buff*,int ) ;
 struct ip_rt_info* nf_queue_entry_reroute (struct nf_queue_entry const*) ;

__attribute__((used)) static int nf_ip_reroute(struct sk_buff *skb,
    const struct nf_queue_entry *entry)
{
 const struct ip_rt_info *rt_info = nf_queue_entry_reroute(entry);

 if (entry->hook == NF_INET_LOCAL_OUT) {
  const struct iphdr *iph = ip_hdr(skb);

  if (!(iph->tos == rt_info->tos
        && skb->mark == rt_info->mark
        && iph->daddr == rt_info->daddr
        && iph->saddr == rt_info->saddr))
   return ip_route_me_harder(skb, RTN_UNSPEC);
 }
 return 0;
}
