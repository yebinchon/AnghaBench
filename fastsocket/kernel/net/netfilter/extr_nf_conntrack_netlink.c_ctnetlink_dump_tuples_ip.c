
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l3proto {int (* tuple_to_nlattr ) (struct sk_buff*,struct nf_conntrack_tuple const*) ;} ;


 int CTA_TUPLE_IP ;
 int NLA_F_NESTED ;
 scalar_t__ likely (int (*) (struct sk_buff*,struct nf_conntrack_tuple const*)) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,struct nf_conntrack_tuple const*) ;

__attribute__((used)) static inline int
ctnetlink_dump_tuples_ip(struct sk_buff *skb,
    const struct nf_conntrack_tuple *tuple,
    struct nf_conntrack_l3proto *l3proto)
{
 int ret = 0;
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, CTA_TUPLE_IP | NLA_F_NESTED);
 if (!nest_parms)
  goto nla_put_failure;

 if (likely(l3proto->tuple_to_nlattr))
  ret = l3proto->tuple_to_nlattr(skb, tuple);

 nla_nest_end(skb, nest_parms);

 return ret;

nla_put_failure:
 return -1;
}
