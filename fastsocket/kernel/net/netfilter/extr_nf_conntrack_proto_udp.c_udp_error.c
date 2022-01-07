
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct udphdr {int check; int len; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {scalar_t__ sysctl_checksum; } ;
struct net {TYPE_1__ ct; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _hdr ;


 int IPPROTO_UDP ;
 scalar_t__ LOG_INVALID (struct net*,int ) ;
 int NF_ACCEPT ;
 unsigned int NF_INET_PRE_ROUTING ;
 scalar_t__ nf_checksum (struct sk_buff*,unsigned int,unsigned int,int ,int ) ;
 int nf_log_packet (int ,int ,struct sk_buff*,int *,int *,int *,char*) ;
 int ntohs (int ) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct udphdr*) ;

__attribute__((used)) static int udp_error(struct net *net, struct sk_buff *skb, unsigned int dataoff,
       enum ip_conntrack_info *ctinfo,
       u_int8_t pf,
       unsigned int hooknum)
{
 unsigned int udplen = skb->len - dataoff;
 const struct udphdr *hdr;
 struct udphdr _hdr;


 hdr = skb_header_pointer(skb, dataoff, sizeof(_hdr), &_hdr);
 if (hdr == ((void*)0)) {
  if (LOG_INVALID(net, IPPROTO_UDP))
   nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
          "nf_ct_udp: short packet ");
  return -NF_ACCEPT;
 }


 if (ntohs(hdr->len) > udplen || ntohs(hdr->len) < sizeof(*hdr)) {
  if (LOG_INVALID(net, IPPROTO_UDP))
   nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
    "nf_ct_udp: truncated/malformed packet ");
  return -NF_ACCEPT;
 }


 if (!hdr->check)
  return NF_ACCEPT;





 if (net->ct.sysctl_checksum && hooknum == NF_INET_PRE_ROUTING &&
     nf_checksum(skb, hooknum, dataoff, IPPROTO_UDP, pf)) {
  if (LOG_INVALID(net, IPPROTO_UDP))
   nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
    "nf_ct_udp: bad UDP checksum ");
  return -NF_ACCEPT;
 }

 return NF_ACCEPT;
}
