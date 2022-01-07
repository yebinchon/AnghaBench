
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;
struct nf_conntrack_l3proto {int (* nlattr_to_tuple ) (struct nlattr**,struct nf_conntrack_tuple*) ;int nla_policy; } ;


 int CTA_IP_MAX ;
 struct nf_conntrack_l3proto* __nf_ct_l3proto_find (int ) ;
 scalar_t__ likely (int (*) (struct nlattr**,struct nf_conntrack_tuple*)) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;
 int nla_validate_nested (struct nlattr*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nlattr**,struct nf_conntrack_tuple*) ;

__attribute__((used)) static inline int
ctnetlink_parse_tuple_ip(struct nlattr *attr, struct nf_conntrack_tuple *tuple)
{
 struct nlattr *tb[CTA_IP_MAX+1];
 struct nf_conntrack_l3proto *l3proto;
 int ret = 0;

 nla_parse_nested(tb, CTA_IP_MAX, attr, ((void*)0));

 rcu_read_lock();
 l3proto = __nf_ct_l3proto_find(tuple->src.l3num);

 if (likely(l3proto->nlattr_to_tuple)) {
  ret = nla_validate_nested(attr, CTA_IP_MAX,
       l3proto->nla_policy);
  if (ret == 0)
   ret = l3proto->nlattr_to_tuple(tb, tuple);
 }

 rcu_read_unlock();

 return ret;
}
