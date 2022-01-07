
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int ihl; scalar_t__ type; scalar_t__ protocol; int saddr; int daddr; } ;
struct ip_vs_protocol {struct ip_vs_conn* (* conn_out_get ) (int ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;struct ip_vs_conn* (* conn_in_get ) (int ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;scalar_t__ dont_defrag; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
struct icmphdr {int frag_off; int ihl; scalar_t__ type; scalar_t__ protocol; int saddr; int daddr; } ;
typedef int _icmph ;
typedef int _ciph ;
typedef int __u16 ;


 int AF_INET ;
 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_SOURCE_QUENCH ;
 scalar_t__ ICMP_TIME_EXCEEDED ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_DEFRAG_VS_FWD ;
 int IP_DEFRAG_VS_IN ;
 int IP_MF ;
 int IP_OFFSET ;
 int IP_VS_DBG (int,char*,scalar_t__,...) ;
 int IP_VS_DBG_PKT (int,struct ip_vs_protocol*,struct sk_buff*,unsigned int,char*) ;
 int NF_ACCEPT ;
 int NF_DROP ;
 unsigned int NF_INET_LOCAL_IN ;
 int NF_STOLEN ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 int handle_response_icmp (int ,struct sk_buff*,union nf_inet_addr*,scalar_t__,struct ip_vs_conn*,struct ip_vs_protocol*,unsigned int,unsigned int) ;
 int htons (int) ;
 int icmp_id (struct iphdr*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_vs_checksum_complete (struct sk_buff*,unsigned int) ;
 int ip_vs_fill_iphdr (int ,struct iphdr*,struct ip_vs_iphdr*) ;
 scalar_t__ ip_vs_gather_frags (struct sk_buff*,int ) ;
 unsigned int ip_vs_icmp_xmit (struct sk_buff*,struct ip_vs_conn*,struct ip_vs_protocol*,unsigned int) ;
 int ip_vs_in_stats (struct ip_vs_conn*,struct sk_buff*) ;
 struct ip_vs_protocol* ip_vs_proto_get (scalar_t__) ;
 int ntohs (int ) ;
 int skb_csum_unnecessary (struct sk_buff*) ;
 struct iphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct iphdr*) ;
 struct ip_vs_conn* stub1 (int ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;
 struct ip_vs_conn* stub2 (int ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ip_vs_in_icmp(struct sk_buff *skb, int *related, unsigned int hooknum)
{
 struct iphdr *iph;
 struct icmphdr _icmph, *ic;
 struct iphdr _ciph, *cih;
 struct ip_vs_iphdr ciph;
 struct ip_vs_conn *cp;
 struct ip_vs_protocol *pp;
 unsigned int offset, ihl, verdict;
 union nf_inet_addr snet;

 *related = 1;


 if (ip_hdr(skb)->frag_off & htons(IP_MF | IP_OFFSET)) {
  if (ip_vs_gather_frags(skb, hooknum == NF_INET_LOCAL_IN ?
         IP_DEFRAG_VS_IN : IP_DEFRAG_VS_FWD))
   return NF_STOLEN;
 }

 iph = ip_hdr(skb);
 offset = ihl = iph->ihl * 4;
 ic = skb_header_pointer(skb, offset, sizeof(_icmph), &_icmph);
 if (ic == ((void*)0))
  return NF_DROP;

 IP_VS_DBG(12, "Incoming ICMP (%d,%d) %pI4->%pI4\n",
    ic->type, ntohs(icmp_id(ic)),
    &iph->saddr, &iph->daddr);
 if ((ic->type != ICMP_DEST_UNREACH) &&
     (ic->type != ICMP_SOURCE_QUENCH) &&
     (ic->type != ICMP_TIME_EXCEEDED)) {
  *related = 0;
  return NF_ACCEPT;
 }


 offset += sizeof(_icmph);
 cih = skb_header_pointer(skb, offset, sizeof(_ciph), &_ciph);
 if (cih == ((void*)0))
  return NF_ACCEPT;

 pp = ip_vs_proto_get(cih->protocol);
 if (!pp)
  return NF_ACCEPT;


 if (unlikely(cih->frag_off & htons(IP_OFFSET) &&
       pp->dont_defrag))
  return NF_ACCEPT;

 IP_VS_DBG_PKT(11, pp, skb, offset, "Checking incoming ICMP for");

 offset += cih->ihl * 4;

 ip_vs_fill_iphdr(AF_INET, cih, &ciph);

 cp = pp->conn_in_get(AF_INET, skb, pp, &ciph, offset, 1);
 if (!cp) {

  cp = pp->conn_out_get(AF_INET, skb, pp, &ciph, offset, 1);
  if (cp) {
   snet.ip = iph->saddr;
   return handle_response_icmp(AF_INET, skb, &snet,
          cih->protocol, cp, pp,
          offset, ihl);
  }
  return NF_ACCEPT;
 }

 verdict = NF_DROP;


 if (!skb_csum_unnecessary(skb) && ip_vs_checksum_complete(skb, ihl)) {

  IP_VS_DBG(1, "Incoming ICMP: failed checksum from %pI4!\n",
     &iph->saddr);
  goto out;
 }


 ip_vs_in_stats(cp, skb);
 if (IPPROTO_TCP == cih->protocol || IPPROTO_UDP == cih->protocol)
  offset += 2 * sizeof(__u16);
 verdict = ip_vs_icmp_xmit(skb, cp, pp, offset);


  out:
 __ip_vs_conn_put(cp);

 return verdict;
}
