
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; int dev; scalar_t__ ipvs_property; } ;
struct net_device {int dummy; } ;
struct ip_vs_protocol {scalar_t__ protocol; struct ip_vs_conn* (* conn_out_get ) (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,int ,int ) ;int dont_defrag; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int len; int saddr; } ;
struct ip_vs_conn {int dummy; } ;
typedef int _ports ;
typedef int __be16 ;
struct TYPE_2__ {int frag_off; } ;


 int AF_INET ;
 int AF_INET6 ;
 int ETH_P_IP ;
 int EnterFunction (int) ;
 int ICMPV6_DEST_UNREACH ;
 int ICMPV6_PORT_UNREACH ;
 int ICMP_DEST_UNREACH ;
 int ICMP_PORT_UNREACH ;
 scalar_t__ IPPROTO_ICMP ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_DEFRAG_VS_OUT ;
 int IP_MF ;
 int IP_OFFSET ;
 int IP_VS_DBG_PKT (int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 unsigned int handle_response (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int ) ;
 int htons (int) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_vs_fill_iphdr (int,int ,struct ip_vs_iphdr*) ;
 scalar_t__ ip_vs_gather_frags (struct sk_buff*,int ) ;
 scalar_t__ ip_vs_lookup_real_service (int,scalar_t__,int *,int ) ;
 int ip_vs_out_icmp (struct sk_buff*,int*) ;
 int ip_vs_out_icmp_v6 (struct sk_buff*,int*) ;
 struct ip_vs_protocol* ip_vs_proto_get (scalar_t__) ;
 int is_sctp_abort (struct sk_buff*,int ) ;
 int is_tcp_reset (struct sk_buff*,int ) ;
 int * skb_header_pointer (struct sk_buff*,int ,int,int *) ;
 int skb_network_header (struct sk_buff*) ;
 struct ip_vs_conn* stub1 (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,int ,int ) ;
 scalar_t__ sysctl_ip_vs_nat_icmp_send ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int
ip_vs_out(unsigned int hooknum, struct sk_buff *skb,
   const struct net_device *in, const struct net_device *out,
   int (*okfn)(struct sk_buff *))
{
 struct ip_vs_iphdr iph;
 struct ip_vs_protocol *pp;
 struct ip_vs_conn *cp;
 int af;

 EnterFunction(11);

 af = (skb->protocol == htons(ETH_P_IP)) ? AF_INET : AF_INET6;

 if (skb->ipvs_property)
  return NF_ACCEPT;

 ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);
  if (unlikely(iph.protocol == IPPROTO_ICMP)) {
   int related, verdict = ip_vs_out_icmp(skb, &related);

   if (related)
    return verdict;
   ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);
  }

 pp = ip_vs_proto_get(iph.protocol);
 if (unlikely(!pp))
  return NF_ACCEPT;
  if (unlikely(ip_hdr(skb)->frag_off & htons(IP_MF|IP_OFFSET) &&
        !pp->dont_defrag)) {
   if (ip_vs_gather_frags(skb, IP_DEFRAG_VS_OUT))
    return NF_STOLEN;

   ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);
  }




 cp = pp->conn_out_get(af, skb, pp, &iph, iph.len, 0);

 if (unlikely(!cp)) {
  if (sysctl_ip_vs_nat_icmp_send &&
      (pp->protocol == IPPROTO_TCP ||
       pp->protocol == IPPROTO_UDP ||
       pp->protocol == IPPROTO_SCTP)) {
   __be16 _ports[2], *pptr;

   pptr = skb_header_pointer(skb, iph.len,
        sizeof(_ports), _ports);
   if (pptr == ((void*)0))
    return NF_ACCEPT;
   if (ip_vs_lookup_real_service(af, iph.protocol,
            &iph.saddr,
            pptr[0])) {





    if ((iph.protocol != IPPROTO_TCP &&
         iph.protocol != IPPROTO_SCTP)
         || ((iph.protocol == IPPROTO_TCP
       && !is_tcp_reset(skb, iph.len))
      || (iph.protocol == IPPROTO_SCTP
      && !is_sctp_abort(skb,
       iph.len)))) {
      icmp_send(skb,
         ICMP_DEST_UNREACH,
         ICMP_PORT_UNREACH, 0);
     return NF_DROP;
    }
   }
  }
  IP_VS_DBG_PKT(12, pp, skb, 0,
         "packet continues traversal as normal");
  return NF_ACCEPT;
 }

 return handle_response(af, skb, pp, cp, iph.len);
}
