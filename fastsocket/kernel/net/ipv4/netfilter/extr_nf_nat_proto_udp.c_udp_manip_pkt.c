
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


struct udphdr {scalar_t__ check; int dest; int source; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; } ;
struct TYPE_14__ {int port; } ;
struct TYPE_15__ {TYPE_6__ udp; } ;
struct TYPE_13__ {int ip; } ;
struct TYPE_16__ {TYPE_7__ u; TYPE_5__ u3; } ;
struct TYPE_10__ {int port; } ;
struct TYPE_11__ {TYPE_2__ udp; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_12__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_8__ dst; TYPE_4__ src; } ;
struct iphdr {int ihl; int daddr; int saddr; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be32 ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int IP_NAT_MANIP_SRC ;
 int inet_proto_csum_replace2 (scalar_t__*,struct sk_buff*,int ,int ,int ) ;
 int inet_proto_csum_replace4 (scalar_t__*,struct sk_buff*,int ,int ,int) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
udp_manip_pkt(struct sk_buff *skb,
       unsigned int iphdroff,
       const struct nf_conntrack_tuple *tuple,
       enum nf_nat_manip_type maniptype)
{
 const struct iphdr *iph = (struct iphdr *)(skb->data + iphdroff);
 struct udphdr *hdr;
 unsigned int hdroff = iphdroff + iph->ihl*4;
 __be32 oldip, newip;
 __be16 *portptr, newport;

 if (!skb_make_writable(skb, hdroff + sizeof(*hdr)))
  return 0;

 iph = (struct iphdr *)(skb->data + iphdroff);
 hdr = (struct udphdr *)(skb->data + hdroff);

 if (maniptype == IP_NAT_MANIP_SRC) {

  oldip = iph->saddr;
  newip = tuple->src.u3.ip;
  newport = tuple->src.u.udp.port;
  portptr = &hdr->source;
 } else {

  oldip = iph->daddr;
  newip = tuple->dst.u3.ip;
  newport = tuple->dst.u.udp.port;
  portptr = &hdr->dest;
 }
 if (hdr->check || skb->ip_summed == CHECKSUM_PARTIAL) {
  inet_proto_csum_replace4(&hdr->check, skb, oldip, newip, 1);
  inet_proto_csum_replace2(&hdr->check, skb, *portptr, newport,
      0);
  if (!hdr->check)
   hdr->check = CSUM_MANGLED_0;
 }
 *portptr = newport;
 return 1;
}
