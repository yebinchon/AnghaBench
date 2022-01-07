
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ sysctl_checksum; } ;
struct net {TYPE_1__ ct; } ;
struct icmphdr {scalar_t__ type; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _ih ;


 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_PARAMETERPROB ;
 scalar_t__ ICMP_REDIRECT ;
 scalar_t__ ICMP_SOURCE_QUENCH ;
 scalar_t__ ICMP_TIME_EXCEEDED ;
 int IPPROTO_ICMP ;
 scalar_t__ LOG_INVALID (struct net*,int ) ;
 int NF_ACCEPT ;
 unsigned int NF_INET_PRE_ROUTING ;
 scalar_t__ NR_ICMP_TYPES ;
 int PF_INET ;
 int icmp_error_message (struct net*,struct sk_buff*,int*,unsigned int) ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,unsigned int,unsigned int,int ) ;
 int nf_log_packet (int ,int ,struct sk_buff*,int *,int *,int *,char*) ;
 struct icmphdr* skb_header_pointer (struct sk_buff*,int ,int,struct icmphdr*) ;

__attribute__((used)) static int
icmp_error(struct net *net, struct sk_buff *skb, unsigned int dataoff,
    enum ip_conntrack_info *ctinfo, u_int8_t pf, unsigned int hooknum)
{
 const struct icmphdr *icmph;
 struct icmphdr _ih;


 icmph = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_ih), &_ih);
 if (icmph == ((void*)0)) {
  if (LOG_INVALID(net, IPPROTO_ICMP))
   nf_log_packet(PF_INET, 0, skb, ((void*)0), ((void*)0), ((void*)0),
          "nf_ct_icmp: short packet ");
  return -NF_ACCEPT;
 }


 if (net->ct.sysctl_checksum && hooknum == NF_INET_PRE_ROUTING &&
     nf_ip_checksum(skb, hooknum, dataoff, 0)) {
  if (LOG_INVALID(net, IPPROTO_ICMP))
   nf_log_packet(PF_INET, 0, skb, ((void*)0), ((void*)0), ((void*)0),
          "nf_ct_icmp: bad HW ICMP checksum ");
  return -NF_ACCEPT;
 }







 if (icmph->type > NR_ICMP_TYPES) {
  if (LOG_INVALID(net, IPPROTO_ICMP))
   nf_log_packet(PF_INET, 0, skb, ((void*)0), ((void*)0), ((void*)0),
          "nf_ct_icmp: invalid ICMP type ");
  return -NF_ACCEPT;
 }


 if (icmph->type != ICMP_DEST_UNREACH
     && icmph->type != ICMP_SOURCE_QUENCH
     && icmph->type != ICMP_TIME_EXCEEDED
     && icmph->type != ICMP_PARAMETERPROB
     && icmph->type != ICMP_REDIRECT)
  return NF_ACCEPT;

 return icmp_error_message(net, skb, ctinfo, hooknum);
}
