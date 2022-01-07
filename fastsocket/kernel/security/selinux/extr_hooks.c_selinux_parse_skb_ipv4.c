
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct udphdr {int ihl; int protocol; int dccph_dport; int dccph_sport; int frag_off; int dest; int source; int daddr; int saddr; } ;
struct tcphdr {int ihl; int protocol; int dccph_dport; int dccph_sport; int frag_off; int dest; int source; int daddr; int saddr; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int protocol; int dccph_dport; int dccph_sport; int frag_off; int dest; int source; int daddr; int saddr; } ;
struct dccp_hdr {int ihl; int protocol; int dccph_dport; int dccph_sport; int frag_off; int dest; int source; int daddr; int saddr; } ;
struct TYPE_4__ {int daddr; int saddr; } ;
struct TYPE_5__ {int dport; int sport; TYPE_1__ v4info; } ;
struct TYPE_6__ {TYPE_2__ net; } ;
struct common_audit_data {TYPE_3__ u; } ;
typedef int _udph ;
typedef int _tcph ;
typedef int _iph ;
typedef int _dccph ;


 int EINVAL ;



 int IP_OFFSET ;
 int ntohs (int ) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,int,int,struct udphdr*) ;
 int skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static int selinux_parse_skb_ipv4(struct sk_buff *skb,
   struct common_audit_data *ad, u8 *proto)
{
 int offset, ihlen, ret = -EINVAL;
 struct iphdr _iph, *ih;

 offset = skb_network_offset(skb);
 ih = skb_header_pointer(skb, offset, sizeof(_iph), &_iph);
 if (ih == ((void*)0))
  goto out;

 ihlen = ih->ihl * 4;
 if (ihlen < sizeof(_iph))
  goto out;

 ad->u.net.v4info.saddr = ih->saddr;
 ad->u.net.v4info.daddr = ih->daddr;
 ret = 0;

 if (proto)
  *proto = ih->protocol;

 switch (ih->protocol) {
 case 129: {
  struct tcphdr _tcph, *th;

  if (ntohs(ih->frag_off) & IP_OFFSET)
   break;

  offset += ihlen;
  th = skb_header_pointer(skb, offset, sizeof(_tcph), &_tcph);
  if (th == ((void*)0))
   break;

  ad->u.net.sport = th->source;
  ad->u.net.dport = th->dest;
  break;
 }

 case 128: {
  struct udphdr _udph, *uh;

  if (ntohs(ih->frag_off) & IP_OFFSET)
   break;

  offset += ihlen;
  uh = skb_header_pointer(skb, offset, sizeof(_udph), &_udph);
  if (uh == ((void*)0))
   break;

  ad->u.net.sport = uh->source;
  ad->u.net.dport = uh->dest;
  break;
 }

 case 130: {
  struct dccp_hdr _dccph, *dh;

  if (ntohs(ih->frag_off) & IP_OFFSET)
   break;

  offset += ihlen;
  dh = skb_header_pointer(skb, offset, sizeof(_dccph), &_dccph);
  if (dh == ((void*)0))
   break;

  ad->u.net.sport = dh->dccph_sport;
  ad->u.net.dport = dh->dccph_dport;
  break;
 }

 default:
  break;
 }
out:
 return ret;
}
