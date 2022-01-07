
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int nfctinfo; int * nfct; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct TYPE_3__ {int protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct icmp6hdr {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int ct_general; } ;


 scalar_t__ IP_CT_DIR_REPLY ;
 scalar_t__ IP_CT_IS_REPLY ;
 int IP_CT_RELATED ;
 int NF_ACCEPT ;
 int NF_CT_ASSERT (int ) ;
 scalar_t__ NF_CT_DIRECTION (struct nf_conntrack_tuple_hash const*) ;
 int PF_INET6 ;
 struct nf_conntrack_l4proto* __nf_ct_l4proto_find (int ,int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_tuple*) ;
 int nf_conntrack_l3proto_ipv6 ;
 int nf_ct_get_tuplepr (struct sk_buff*,scalar_t__,int ,struct nf_conntrack_tuple*) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int *,struct nf_conntrack_l4proto const*) ;
 TYPE_2__* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash const*) ;
 int pr_debug (char*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static int
icmpv6_error_message(struct net *net,
       struct sk_buff *skb,
       unsigned int icmp6off,
       enum ip_conntrack_info *ctinfo,
       unsigned int hooknum)
{
 struct nf_conntrack_tuple intuple, origtuple;
 const struct nf_conntrack_tuple_hash *h;
 const struct nf_conntrack_l4proto *inproto;

 NF_CT_ASSERT(skb->nfct == ((void*)0));


 if (!nf_ct_get_tuplepr(skb,
          skb_network_offset(skb)
    + sizeof(struct ipv6hdr)
    + sizeof(struct icmp6hdr),
          PF_INET6, &origtuple)) {
  pr_debug("icmpv6_error: Can't get tuple\n");
  return -NF_ACCEPT;
 }


 inproto = __nf_ct_l4proto_find(PF_INET6, origtuple.dst.protonum);



 if (!nf_ct_invert_tuple(&intuple, &origtuple,
    &nf_conntrack_l3proto_ipv6, inproto)) {
  pr_debug("icmpv6_error: Can't invert tuple\n");
  return -NF_ACCEPT;
 }

 *ctinfo = IP_CT_RELATED;

 h = nf_conntrack_find_get(net, &intuple);
 if (!h) {
  pr_debug("icmpv6_error: no match\n");
  return -NF_ACCEPT;
 } else {
  if (NF_CT_DIRECTION(h) == IP_CT_DIR_REPLY)
   *ctinfo += IP_CT_IS_REPLY;
 }


 skb->nfct = &nf_ct_tuplehash_to_ctrack(h)->ct_general;
 skb->nfctinfo = *ctinfo;
 return NF_ACCEPT;
}
