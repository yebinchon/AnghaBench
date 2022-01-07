
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_3__ icmp; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct nf_conntrack_tuple {TYPE_5__ src; } ;
struct iphdr {int ihl; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ echo; } ;
struct icmphdr {TYPE_2__ un; int checksum; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int ) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
icmp_manip_pkt(struct sk_buff *skb,
        unsigned int iphdroff,
        const struct nf_conntrack_tuple *tuple,
        enum nf_nat_manip_type maniptype)
{
 const struct iphdr *iph = (struct iphdr *)(skb->data + iphdroff);
 struct icmphdr *hdr;
 unsigned int hdroff = iphdroff + iph->ihl*4;

 if (!skb_make_writable(skb, hdroff + sizeof(*hdr)))
  return 0;

 hdr = (struct icmphdr *)(skb->data + hdroff);
 inet_proto_csum_replace2(&hdr->checksum, skb,
     hdr->un.echo.id, tuple->src.u.icmp.id, 0);
 hdr->un.echo.id = tuple->src.u.icmp.id;
 return 1;
}
