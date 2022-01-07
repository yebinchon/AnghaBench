
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct sk_buff {scalar_t__ nfctinfo; scalar_t__ ip_summed; scalar_t__ len; scalar_t__ data; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conn {int status; TYPE_1__* tuplehash; } ;
struct iphdr {int ihl; int protocol; } ;
struct icmphdr {scalar_t__ type; scalar_t__ checksum; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;


 scalar_t__ AF_INET ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int CTINFO2DIR (int) ;
 int HOOK2MANIP (unsigned int) ;
 scalar_t__ ICMP_REDIRECT ;
 unsigned long IPS_DST_NAT ;
 int IPS_NAT_DONE_MASK ;
 int IPS_NAT_MASK ;
 unsigned long IPS_SRC_NAT ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 scalar_t__ IP_CT_IS_REPLY ;
 scalar_t__ IP_CT_RELATED ;
 int IP_NAT_MANIP_SRC ;
 int NF_CT_ASSERT (int) ;
 int PF_INET ;
 struct nf_conntrack_l4proto* __nf_ct_l4proto_find (int ,int ) ;
 scalar_t__ csum_fold (int ) ;
 int ip_hdrlen (struct sk_buff*) ;
 int l3proto ;
 int manip_pkt (int ,struct sk_buff*,int,struct nf_conntrack_tuple*,int) ;
 int nf_ct_get_tuple (struct sk_buff*,int,int,int ,int ,struct nf_conntrack_tuple*,int ,struct nf_conntrack_l4proto const*) ;
 int nf_ct_invert_tuplepr (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,unsigned int,int,int ) ;
 int pr_debug (char*,struct sk_buff*,int,char*) ;
 int skb_checksum (struct sk_buff*,int,scalar_t__,int ) ;
 int skb_make_writable (struct sk_buff*,int) ;

int nf_nat_icmp_reply_translation(struct nf_conn *ct,
      enum ip_conntrack_info ctinfo,
      unsigned int hooknum,
      struct sk_buff *skb)
{
 struct {
  struct icmphdr icmp;
  struct iphdr ip;
 } *inside;
 const struct nf_conntrack_l4proto *l4proto;
 struct nf_conntrack_tuple inner, target;
 int hdrlen = ip_hdrlen(skb);
 enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);
 unsigned long statusbit;
 enum nf_nat_manip_type manip = HOOK2MANIP(hooknum);

 if (!skb_make_writable(skb, hdrlen + sizeof(*inside)))
  return 0;

 inside = (void *)skb->data + ip_hdrlen(skb);



 if (nf_ip_checksum(skb, hooknum, hdrlen, 0))
  return 0;


 NF_CT_ASSERT(skb->nfctinfo == IP_CT_RELATED ||
       skb->nfctinfo == IP_CT_RELATED+IP_CT_IS_REPLY);




 if (inside->icmp.type == ICMP_REDIRECT) {

  if ((ct->status & IPS_NAT_DONE_MASK) != IPS_NAT_DONE_MASK)
   return 0;

  if (ct->status & IPS_NAT_MASK)
   return 0;
 }

 pr_debug("icmp_reply_translation: translating error %p manip %u "
   "dir %s\n", skb, manip,
   dir == IP_CT_DIR_ORIGINAL ? "ORIG" : "REPLY");


 l4proto = __nf_ct_l4proto_find(PF_INET, inside->ip.protocol);

 if (!nf_ct_get_tuple(skb,
        ip_hdrlen(skb) + sizeof(struct icmphdr),
        (ip_hdrlen(skb) +
         sizeof(struct icmphdr) + inside->ip.ihl * 4),
        (u_int16_t)AF_INET,
        inside->ip.protocol,
        &inner, l3proto, l4proto))
  return 0;






 if (!manip_pkt(inside->ip.protocol, skb,
         ip_hdrlen(skb) + sizeof(inside->icmp),
         &ct->tuplehash[!dir].tuple,
         !manip))
  return 0;

 if (skb->ip_summed != CHECKSUM_PARTIAL) {

  inside = (void *)skb->data + ip_hdrlen(skb);
  inside->icmp.checksum = 0;
  inside->icmp.checksum =
   csum_fold(skb_checksum(skb, hdrlen,
            skb->len - hdrlen, 0));
 }



 if (manip == IP_NAT_MANIP_SRC)
  statusbit = IPS_SRC_NAT;
 else
  statusbit = IPS_DST_NAT;


 if (dir == IP_CT_DIR_REPLY)
  statusbit ^= IPS_NAT_MASK;

 if (ct->status & statusbit) {
  nf_ct_invert_tuplepr(&target, &ct->tuplehash[!dir].tuple);
  if (!manip_pkt(0, skb, 0, &target, manip))
   return 0;
 }

 return 1;
}
