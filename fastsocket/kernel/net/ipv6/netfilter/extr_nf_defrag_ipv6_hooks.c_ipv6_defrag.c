
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ nfct; } ;
struct net_device {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int NF_HOOK_THRESH (int ,unsigned int,struct sk_buff*,struct net_device*,struct net_device*,int (*) (struct sk_buff*),scalar_t__) ;
 scalar_t__ NF_IP6_PRI_CONNTRACK_DEFRAG ;
 unsigned int NF_STOLEN ;
 int PF_INET6 ;
 int nf_ct6_defrag_user (unsigned int,struct sk_buff*) ;
 int nf_ct_frag6_consume_orig (struct sk_buff*) ;
 struct sk_buff* nf_ct_frag6_gather (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int ipv6_defrag(unsigned int hooknum,
    struct sk_buff *skb,
    const struct net_device *in,
    const struct net_device *out,
    int (*okfn)(struct sk_buff *))
{
 struct sk_buff *reasm;


 if (skb->nfct)
  return NF_ACCEPT;

 reasm = nf_ct_frag6_gather(skb, nf_ct6_defrag_user(hooknum, skb));

 if (reasm == ((void*)0))
  return NF_STOLEN;


 if (reasm == skb)
  return NF_ACCEPT;

 nf_ct_frag6_consume_orig(reasm);

 NF_HOOK_THRESH(PF_INET6, hooknum, reasm,
         (struct net_device *) in, (struct net_device *) out,
         okfn, NF_IP6_PRI_CONNTRACK_DEFRAG + 1);

 return NF_STOLEN;
}
