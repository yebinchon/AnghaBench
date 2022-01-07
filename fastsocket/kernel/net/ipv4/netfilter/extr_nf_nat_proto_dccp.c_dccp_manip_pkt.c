
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_14__ {int port; } ;
struct TYPE_15__ {TYPE_6__ dccp; } ;
struct TYPE_13__ {int ip; } ;
struct TYPE_16__ {TYPE_7__ u; TYPE_5__ u3; } ;
struct TYPE_10__ {int port; } ;
struct TYPE_11__ {TYPE_2__ dccp; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_12__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_8__ dst; TYPE_4__ src; } ;
struct iphdr {int ihl; int daddr; int saddr; } ;
struct dccp_hdr {int dccph_checksum; int dccph_dport; int dccph_sport; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be32 ;
typedef int __be16 ;


 int IP_NAT_MANIP_SRC ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int ) ;
 int inet_proto_csum_replace4 (int *,struct sk_buff*,int ,int ,int) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
dccp_manip_pkt(struct sk_buff *skb,
        unsigned int iphdroff,
        const struct nf_conntrack_tuple *tuple,
        enum nf_nat_manip_type maniptype)
{
 const struct iphdr *iph = (const void *)(skb->data + iphdroff);
 struct dccp_hdr *hdr;
 unsigned int hdroff = iphdroff + iph->ihl * 4;
 __be32 oldip, newip;
 __be16 *portptr, oldport, newport;
 int hdrsize = 8;

 if (skb->len >= hdroff + sizeof(struct dccp_hdr))
  hdrsize = sizeof(struct dccp_hdr);

 if (!skb_make_writable(skb, hdroff + hdrsize))
  return 0;

 iph = (struct iphdr *)(skb->data + iphdroff);
 hdr = (struct dccp_hdr *)(skb->data + hdroff);

 if (maniptype == IP_NAT_MANIP_SRC) {
  oldip = iph->saddr;
  newip = tuple->src.u3.ip;
  newport = tuple->src.u.dccp.port;
  portptr = &hdr->dccph_sport;
 } else {
  oldip = iph->daddr;
  newip = tuple->dst.u3.ip;
  newport = tuple->dst.u.dccp.port;
  portptr = &hdr->dccph_dport;
 }

 oldport = *portptr;
 *portptr = newport;

 if (hdrsize < sizeof(*hdr))
  return 1;

 inet_proto_csum_replace4(&hdr->dccph_checksum, skb, oldip, newip, 1);
 inet_proto_csum_replace2(&hdr->dccph_checksum, skb, oldport, newport,
     0);
 return 1;
}
