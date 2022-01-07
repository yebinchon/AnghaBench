
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct sk_buff {scalar_t__ data; } ;
struct nf_nat_protocol {int (* manip_pkt ) (struct sk_buff*,unsigned int,struct nf_conntrack_tuple const*,int) ;} ;
struct TYPE_7__ {int ip; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;
struct iphdr {int daddr; int check; int saddr; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int IP_NAT_MANIP_SRC ;
 struct nf_nat_protocol* __nf_nat_proto_find (int ) ;
 int csum_replace4 (int *,int ,int ) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;
 int stub1 (struct sk_buff*,unsigned int,struct nf_conntrack_tuple const*,int) ;

__attribute__((used)) static bool
manip_pkt(u_int16_t proto,
   struct sk_buff *skb,
   unsigned int iphdroff,
   const struct nf_conntrack_tuple *target,
   enum nf_nat_manip_type maniptype)
{
 struct iphdr *iph;
 const struct nf_nat_protocol *p;

 if (!skb_make_writable(skb, iphdroff + sizeof(*iph)))
  return 0;

 iph = (void *)skb->data + iphdroff;




 p = __nf_nat_proto_find(proto);
 if (!p->manip_pkt(skb, iphdroff, target, maniptype))
  return 0;

 iph = (void *)skb->data + iphdroff;

 if (maniptype == IP_NAT_MANIP_SRC) {
  csum_replace4(&iph->check, iph->saddr, target->src.u3.ip);
  iph->saddr = target->src.u3.ip;
 } else {
  csum_replace4(&iph->check, iph->daddr, target->dst.u3.ip);
  iph->daddr = target->dst.u3.ip;
 }
 return 1;
}
