
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int * nfct; } ;
struct nf_conntrack_l4proto {int (* error ) (struct net*,struct sk_buff*,unsigned int,int*,int ,unsigned int) ;int (* packet ) (struct nf_conn*,struct sk_buff*,unsigned int,int,int ,unsigned int) ;} ;
struct nf_conntrack_l3proto {int (* get_l4proto ) (struct sk_buff*,int ,unsigned int*,int *) ;} ;
struct nf_conn {int status; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPCT_STATUS ;
 int IPS_SEEN_REPLY_BIT ;
 scalar_t__ IS_ERR (struct nf_conn*) ;
 unsigned int NF_ACCEPT ;
 int NF_CT_ASSERT (int *) ;
 int NF_CT_STAT_INC_ATOMIC (struct net*,int ) ;
 unsigned int NF_DROP ;
 struct nf_conntrack_l3proto* __nf_ct_l3proto_find (int ) ;
 struct nf_conntrack_l4proto* __nf_ct_l4proto_find (int ,int ) ;
 int drop ;
 int error ;
 int ignore ;
 int invalid ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_conntrack_put (int *) ;
 int pr_debug (char*) ;
 struct nf_conn* resolve_normal_ct (struct net*,struct sk_buff*,unsigned int,int ,int ,struct nf_conntrack_l3proto*,struct nf_conntrack_l4proto*,int*,int*) ;
 int skb_network_offset (struct sk_buff*) ;
 int stub1 (struct sk_buff*,int ,unsigned int*,int *) ;
 int stub2 (struct net*,struct sk_buff*,unsigned int,int*,int ,unsigned int) ;
 int stub3 (struct nf_conn*,struct sk_buff*,unsigned int,int,int ,unsigned int) ;
 int test_and_set_bit (int ,int *) ;

unsigned int
nf_conntrack_in(struct net *net, u_int8_t pf, unsigned int hooknum,
  struct sk_buff *skb)
{
 struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 struct nf_conntrack_l3proto *l3proto;
 struct nf_conntrack_l4proto *l4proto;
 unsigned int dataoff;
 u_int8_t protonum;
 int set_reply = 0;
 int ret;


 if (skb->nfct) {
  NF_CT_STAT_INC_ATOMIC(net, ignore);
  return NF_ACCEPT;
 }


 l3proto = __nf_ct_l3proto_find(pf);
 ret = l3proto->get_l4proto(skb, skb_network_offset(skb),
       &dataoff, &protonum);
 if (ret <= 0) {
  pr_debug("not prepared to track yet or error occured\n");
  NF_CT_STAT_INC_ATOMIC(net, error);
  NF_CT_STAT_INC_ATOMIC(net, invalid);
  return -ret;
 }

 l4proto = __nf_ct_l4proto_find(pf, protonum);




 if (l4proto->error != ((void*)0)) {
  ret = l4proto->error(net, skb, dataoff, &ctinfo, pf, hooknum);
  if (ret <= 0) {
   NF_CT_STAT_INC_ATOMIC(net, error);
   NF_CT_STAT_INC_ATOMIC(net, invalid);
   return -ret;
  }

  if (skb->nfct)
   return ret;
 }

 ct = resolve_normal_ct(net, skb, dataoff, pf, protonum,
          l3proto, l4proto, &set_reply, &ctinfo);
 if (!ct) {

  NF_CT_STAT_INC_ATOMIC(net, invalid);
  return NF_ACCEPT;
 }

 if (IS_ERR(ct)) {

  NF_CT_STAT_INC_ATOMIC(net, drop);
  return NF_DROP;
 }

 NF_CT_ASSERT(skb->nfct);

 ret = l4proto->packet(ct, skb, dataoff, ctinfo, pf, hooknum);
 if (ret <= 0) {


  pr_debug("nf_conntrack_in: Can't track with proto module\n");
  nf_conntrack_put(skb->nfct);
  skb->nfct = ((void*)0);
  NF_CT_STAT_INC_ATOMIC(net, invalid);
  if (ret == -NF_DROP)
   NF_CT_STAT_INC_ATOMIC(net, drop);
  return -ret;
 }

 if (set_reply && !test_and_set_bit(IPS_SEEN_REPLY_BIT, &ct->status))
  nf_conntrack_event_cache(IPCT_STATUS, ct);

 return ret;
}
