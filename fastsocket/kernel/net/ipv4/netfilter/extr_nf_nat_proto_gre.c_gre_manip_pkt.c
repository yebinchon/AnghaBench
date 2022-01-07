
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int key; } ;
struct TYPE_5__ {TYPE_1__ gre; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_3__ dst; } ;
struct iphdr {int ihl; } ;
struct gre_hdr_pptp {int call_id; } ;
struct gre_hdr {int version; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;




 int IP_NAT_MANIP_DST ;
 int ntohs (int ) ;
 int pr_debug (char*,...) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
gre_manip_pkt(struct sk_buff *skb, unsigned int iphdroff,
       const struct nf_conntrack_tuple *tuple,
       enum nf_nat_manip_type maniptype)
{
 const struct gre_hdr *greh;
 struct gre_hdr_pptp *pgreh;
 const struct iphdr *iph = (struct iphdr *)(skb->data + iphdroff);
 unsigned int hdroff = iphdroff + iph->ihl * 4;



 if (!skb_make_writable(skb, hdroff + sizeof(*pgreh) - 8))
  return 0;

 greh = (void *)skb->data + hdroff;
 pgreh = (struct gre_hdr_pptp *)greh;



 if (maniptype != IP_NAT_MANIP_DST)
  return 1;
 switch (greh->version) {
 case 129:


  break;
 case 128:
  pr_debug("call_id -> 0x%04x\n", ntohs(tuple->dst.u.gre.key));
  pgreh->call_id = tuple->dst.u.gre.key;
  break;
 default:
  pr_debug("can't nat unknown GRE version\n");
  return 0;
 }
 return 1;
}
