
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int nat_table; } ;
struct net {TYPE_1__ ipv4; } ;


 int HOOK2MANIP (unsigned int) ;
 int NF_ACCEPT ;
 int alloc_null_binding (struct nf_conn*,unsigned int) ;
 int ipt_do_table (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int ) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_nat_initialized (struct nf_conn*,int ) ;

int nf_nat_rule_find(struct sk_buff *skb,
       unsigned int hooknum,
       const struct net_device *in,
       const struct net_device *out,
       struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 int ret;

 ret = ipt_do_table(skb, hooknum, in, out, net->ipv4.nat_table);

 if (ret == NF_ACCEPT) {
  if (!nf_nat_initialized(ct, HOOK2MANIP(hooknum)))

   ret = alloc_null_binding(ct, hooknum);
 }
 return ret;
}
